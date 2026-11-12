import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/features/auth/domain/auth_session.dart';
import 'package:campus_pulse/features/auth/domain/otp_challenge.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_attendee.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';
import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_option.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/domain/pricing_tier.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';

/// In-memory fake backend used when `--dart-define=USE_MOCK_BACKEND=true`.
///
/// It deliberately lives behind the repository boundary: the rest of the app
/// cannot tell the difference between this store and the real API, prices are
/// "computed" here exactly as the server would, and every purchase produces a
/// signed-looking QR payload.
class MockCampusStore {
  MockCampusStore._() {
    _seedFriends();
    _seedEvents();
    _seedProfile();
    _seedTickets();
    _seedActivity();
  }

  static final MockCampusStore instance = MockCampusStore._();

  final Map<String, GroupHoldReservation> _holds = <String, GroupHoldReservation>{};
  final Map<String, _MockQuote> _quotes = <String, _MockQuote>{};
  final Map<String, StreamController<EventCapacity>> _capacityControllers =
      <String, StreamController<EventCapacity>>{};

  late List<Event> _events;
  late List<Friend> _friends;
  late List<ActivityItem> _activity;
  late List<Ticket> _tickets;
  late StudentProfile _profile;
  late List<Membership> _memberships;
  late NotificationSettings _notificationSettings;
  late AuthSession _session;
  late OtpChallenge _challenge;

  bool _hasSession = false;
  int _ticketSequence = 1;

  bool get hasSession => _hasSession;

  AuthSession get session => _session;

  StudentProfile get profile => _profile;

  List<Membership> get memberships => List<Membership>.unmodifiable(_memberships);

  NotificationSettings get notificationSettings => _notificationSettings;

  List<Friend> get friends => List<Friend>.unmodifiable(_friends);

  List<Ticket> get tickets {
    final List<Ticket> copy = List<Ticket>.of(_tickets);
    copy.sort((Ticket a, Ticket b) => a.eventStartsAt.compareTo(b.eventStartsAt));
    return List<Ticket>.unmodifiable(copy);
  }

  List<Event> get events => List<Event>.unmodifiable(_events);

  Event eventById(String eventId) {
    for (final Event event in _events) {
      if (event.id == eventId) {
        return event;
      }
    }
    throw const NotFoundException('Cet événement n’existe plus.');
  }

  OtpChallenge requestOtp(String email) {
    final DateTime now = DateTime.now();
    _challenge = OtpChallenge(
      id: 'otp-${now.millisecondsSinceEpoch}',
      email: email,
      expiresAt: now.add(const Duration(minutes: 10)),
      resendAvailableAt: now.add(AppConfig.otpResendCooldown),
      attemptsRemaining: 5,
    );
    return _challenge;
  }

  OtpChallenge get currentChallenge => _challenge;

  AuthSession verifyOtp({required String challengeId, required String code}) {
    if (challengeId != _challenge.id) {
      throw const ValidationException('Cette demande de code a expiré.');
    }
    if (code != '123456') {
      throw const ValidationException('Code incorrect. En démo, utilise 123456.');
    }
    _hasSession = true;
    return _session;
  }

  AuthSession signInWithSso() {
    _hasSession = true;
    return _session;
  }

  AuthSession? restoreSession() => _hasSession ? _session : null;

  void signOut() {
    _hasSession = false;
  }

  List<Event> filterEvents(EventFilter filter) => filter.apply(_events);

  Stream<EventCapacity> watchCapacity(String eventId) {
    final StreamController<EventCapacity> controller = _capacityControllers.putIfAbsent(
      eventId,
      () => StreamController<EventCapacity>.broadcast(),
    );
    return _latestFirst(eventId, controller.stream);
  }

  Future<void> setPresenceVisibility({
    required String eventId,
    required bool isVisible,
  }) async {
    final int index = _events.indexWhere((Event event) => event.id == eventId);
    if (index == -1) {
      throw const NotFoundException('Événement introuvable.');
    }
    _events[index] = _events[index].copyWith(isPresenceVisible: isVisible);
    if (!isVisible) {
      _events[index] = _events[index].copyWith(
        friendsAttending: _events[index].friendsAttending
            .where((EventAttendee attendee) => attendee.id != _profile.id)
            .toList(growable: false),
      );
    }
  }

  GroupHoldReservation holdGroupSpots({required String eventId, required int seats}) {
    if (seats < 1 || seats > AppConfig.maxHeldSeats) {
      throw ValidationException(
        'Tu peux bloquer entre 1 et ${AppConfig.maxHeldSeats} places.',
      );
    }
    final Event event = eventById(eventId);
    if (event.capacity.remainingSeats < seats) {
      throw const ConflictException(
        'Plus assez de places disponibles pour bloquer ce groupe.',
      );
    }
    final DateTime expiresAt = DateTime.now().add(AppConfig.groupHoldDuration);
    final String holdId = 'hold-${DateTime.now().millisecondsSinceEpoch}';
    final GroupHoldReservation reservation = GroupHoldReservation(
      id: holdId,
      eventId: eventId,
      eventTitle: event.title,
      seats: seats,
      expiresAt: expiresAt,
      paymentLinks: List<HoldPaymentLink>.generate(
        seats,
        (int index) => HoldPaymentLink(
          id: '$holdId-link-$index',
          url: 'https://campuspulse.app/pay/$holdId/${index + 1}',
          label: 'Pote ${index + 1}',
        ),
        growable: false,
      ),
      currency: event.pricing.currency,
      unitAmountCents: event.pricing.standardTier?.priceCents ?? 0,
    );
    _holds[holdId] = reservation;
    _updateCapacity(
      eventId,
      (EventCapacity capacity) => capacity.copyWith(heldSeats: capacity.heldSeats + seats),
    );
    return reservation;
  }

  void releaseHold(String holdId) {
    final GroupHoldReservation? hold = _holds.remove(holdId);
    if (hold == null) {
      return;
    }
    _updateCapacity(
      hold.eventId,
      (EventCapacity capacity) {
        final int next = capacity.heldSeats - hold.seats;
        return capacity.copyWith(heldSeats: next < 0 ? 0 : next);
      },
    );
  }

  CheckoutQuote createQuote({
    required String eventId,
    required CheckoutOption option,
    String? referrerId,
  }) {
    final Event event = eventById(eventId);
    if (event.capacity.remainingSeats < option.seats) {
      throw const ConflictException('Les places viennent d’être prises. Réessaie.');
    }
    final String quoteId = 'quote-${DateTime.now().millisecondsSinceEpoch}';
    final int amountCents;
    final String label;
    switch (option) {
      case SquadCheckout(:final int seats):
        final PricingTier? squadTier = event.pricing.squadTier;
        amountCents = squadTier?.priceCents ??
            (event.pricing.standardTier?.priceCents ?? 0) * seats;
        label = 'Escouade · ${event.title} ($seats places)';
      case IndividualCheckout():
        final PricingTier? earlyBird = event.pricing.earlyBirdTier;
        final bool earlyBirdAvailable =
            earlyBird != null && (earlyBird.remainingSeats ?? 1) > 0;
        amountCents = earlyBirdAvailable
            ? earlyBird.priceCents
            : (event.pricing.standardTier?.priceCents ?? 0);
        label = earlyBirdAvailable
            ? 'Early bird · ${event.title}'
            : 'Place · ${event.title}';
    }
    final CheckoutQuote quote = CheckoutQuote(
      id: quoteId,
      eventId: eventId,
      paymentIntentClientSecret: 'pi_mock_${quoteId}_secret_campus',
      amountCents: amountCents,
      currency: event.pricing.currency,
      label: label,
      seats: option.seats,
      expiresAt: DateTime.now().add(const Duration(minutes: 10)),
    );
    _quotes[quoteId] = _MockQuote(
      quote: quote,
      option: option,
      referrerId: referrerId,
    );
    return quote;
  }

  Ticket confirmPurchase(String quoteId) {
    final _MockQuote? pending = _quotes.remove(quoteId);
    if (pending == null) {
      throw const NotFoundException('Ce devis a expiré.');
    }
    if (!pending.quote.expiresAt.isAfter(DateTime.now())) {
      throw const ConflictException('Ce devis a expiré, relance le paiement.');
    }
    final Event event = eventById(pending.quote.eventId);
    final List<Ticket> created = <Ticket>[];
    for (int index = 0; index < pending.quote.seats; index++) {
      final int sequence = _ticketSequence++;
      final String ticketId = 'ticket-${DateTime.now().millisecondsSinceEpoch}-$sequence';
      created.add(
        Ticket(
          id: ticketId,
          eventId: event.id,
          eventTitle: event.title,
          eventStartsAt: event.startsAt,
          venueName: event.venueName,
          organizerName: event.organizerName,
          organizer: event.organizer,
          holderName: _profile.displayName,
          qrPayload: _fakeSignedPayload(ticketId: ticketId, eventId: event.id),
          shortCode: 'CP${sequence.toString().padLeft(4, '0')}',
          status: TicketStatus.valid,
          purchasedAt: DateTime.now(),
          amountPaidCents: pending.quote.amountCents,
          currency: pending.quote.currency,
          seatLabel: pending.quote.seats > 1
              ? 'Escouade · place ${index + 1}/${pending.quote.seats}'
              : 'Place ${event.capacity.seatsTaken + index + 1}',
          squadId: pending.quote.seats > 1 ? 'squad-$quoteId' : null,
        ),
      );
    }
    _tickets.addAll(created);
    _updateCapacity(
      event.id,
      (EventCapacity capacity) => capacity.copyWith(
        seatsTaken: capacity.seatsTaken + created.length,
      ),
    );
    _pushActivity(
      ActivityItem(
        id: 'activity-buy-${DateTime.now().millisecondsSinceEpoch}',
        type: ActivityType.friendPurchased,
        actorName: _profile.firstName,
        eventId: event.id,
        eventTitle: event.title,
        createdAt: DateTime.now(),
        friendCount: 1,
        isFriendActivity: true,
      ),
    );
    return created.first;
  }

  List<int> exportAppleWalletPass(String ticketId) {
    final bool exists = _tickets.any((Ticket ticket) => ticket.id == ticketId);
    if (!exists) {
      throw const NotFoundException('Billet introuvable.');
    }
    return utf8.encode('CampusPulse mock .pkpass for $ticketId');
  }

  String googleWalletSaveUrl(String ticketId) {
    return 'https://pay.google.com/gp/v/save/campuspulse-$ticketId';
  }

  Friend addFriendByQr({required String friendId, required String token}) {
    if (token.trim().isEmpty) {
      throw const ValidationException('Jeton d’invitation invalide.');
    }
    final Friend friend = Friend(
      id: friendId,
      firstName: _pickFirstName(friendId),
      schoolName: _profile.schoolName,
      isOnline: true,
      lastActiveAt: DateTime.now(),
      sharedEvents: 1,
    );
    _friends = <Friend>[
      friend,
      ..._friends.where((Friend existing) => existing.id != friendId),
    ];
    return friend;
  }

  List<Friend> notifyFriends({required String eventId}) {
    final Event event = eventById(eventId);
    final List<Friend> notified = _friends.take(4).toList(growable: false);
    _pushActivity(
      ActivityItem(
        id: 'activity-notify-${DateTime.now().millisecondsSinceEpoch}',
        type: ActivityType.squadCreated,
        actorName: _profile.firstName,
        eventId: event.id,
        eventTitle: event.title,
        createdAt: DateTime.now(),
        friendCount: notified.length,
        isFriendActivity: true,
      ),
    );
    return notified;
  }

  CascadeInvite createCascadeInvite(String eventId) {
    final Event event = eventById(eventId);
    final String shareUrl = AppRoutes.eventInvite(
      eventId: event.id,
      referrerId: _session.userId,
    );
    return CascadeInvite(
      eventId: event.id,
      eventTitle: event.title,
      referrerId: _session.userId,
      shareUrl: shareUrl,
      shareMessage:
          '${_profile.firstName} t’invite à « ${event.title} » le ${event.startsAt.day} à ${event.startsAt.hour}h. '
          'On forme une escouade ? Places à partir de ${event.pricing.standardTier?.priceCents ?? 0} centimes.',
      expiresAt: DateTime.now().add(const Duration(days: 7)),
      squadSeats: AppConfig.squadMaxSeats,
      invitedCount: event.friendsAttendingCount,
      squadDiscountUnlocked: event.friendsAttendingCount >= AppConfig.squadMinSeats,
      discountLabel: AppConfig.squadDiscountLabel,
    );
  }

  List<ActivityItem> get activitySeed => List<ActivityItem>.unmodifiable(_activity);

  Stream<ActivityItem> watchActivity() async* {
    for (final ActivityItem item in _activity) {
      yield item;
      await Future<void>.delayed(const Duration(milliseconds: 900));
    }
    int cursor = 0;
    while (true) {
      await Future<void>.delayed(const Duration(seconds: 9));
      final ActivityItem base = _activity[cursor % _activity.length];
      cursor++;
      yield base.copyWith(
        id: 'live-${DateTime.now().millisecondsSinceEpoch}',
        createdAt: DateTime.now(),
        friendCount: 2 + cursor % 4,
      );
    }
  }

  NotificationSettings updateNotificationSettings(NotificationSettings settings) {
    _notificationSettings = settings;
    return _notificationSettings;
  }

  StudentProfile setDiscreetMode(bool enabled) {
    _profile = _profile.copyWith(isDiscreet: enabled);
    return _profile;
  }

  Membership setMembershipVisibility({
    required OrganizerType organizer,
    required bool isPublic,
  }) {
    final int index = _memberships.indexWhere(
      (Membership membership) => membership.organizer == organizer,
    );
    if (index == -1) {
      throw const NotFoundException('Adhésion introuvable.');
    }
    final Membership updated = _memberships[index].copyWith(isPublic: isPublic);
    _memberships[index] = updated;
    return updated;
  }

  StudentProfile updateProfile({required String firstName, required String lastName}) {
    _profile = _profile.copyWith(firstName: firstName, lastName: lastName);
    return _profile;
  }

  Stream<EventCapacity> _latestFirst(
    String eventId,
    Stream<EventCapacity> updates,
  ) async* {
    yield eventById(eventId).capacity;
    await for (final EventCapacity capacity in updates) {
      yield capacity;
    }
  }

  void _updateCapacity(
    String eventId,
    EventCapacity Function(EventCapacity capacity) update,
  ) {
    final int index = _events.indexWhere((Event event) => event.id == eventId);
    if (index == -1) {
      return;
    }
    final EventCapacity updated = update(_events[index].capacity).copyWith(
      updatedAt: DateTime.now(),
    );
    _events[index] = _events[index].copyWith(capacity: updated);
    final StreamController<EventCapacity>? controller = _capacityControllers[eventId];
    if (controller != null && controller.hasListener) {
      controller.add(updated);
    }
  }

  void _pushActivity(ActivityItem item) {
    _activity = <ActivityItem>[item, ..._activity.take(19)];
  }

  String _fakeSignedPayload({required String ticketId, required String eventId}) {
    final String header = base64Url.encode(
      utf8.encode(jsonEncode(<String, String>{'alg': 'HS256', 'typ': 'JWT'})),
    );
    final String payload = base64Url.encode(
      utf8.encode(
        jsonEncode(<String, dynamic>{
          'sub': ticketId,
          'event': eventId,
          'iss': 'campuspulse.mock',
          'exp': DateTime.now().add(const Duration(days: 30)).millisecondsSinceEpoch ~/ 1000,
        }),
      ),
    );
    return '$header.$payload.demo-signature-not-for-production';
  }

  String _pickFirstName(String seed) {
    const List<String> names = <String>['Alex', 'Camille', 'Nina', 'Jules', 'Romy', 'Sam'];
    return names[seed.hashCode.abs() % names.length];
  }

  void _seedFriends() {
    final DateTime now = DateTime.now();
    _friends = <Friend>[
      Friend(id: 'friend-1', firstName: 'Inès', lastName: 'B.', schoolName: 'Dauphine', isOnline: true, lastActiveAt: now, sharedEvents: 5),
      Friend(id: 'friend-2', firstName: 'Hugo', lastName: 'L.', schoolName: 'Dauphine', lastActiveAt: now.subtract(const Duration(minutes: 8)), sharedEvents: 3),
      Friend(id: 'friend-3', firstName: 'Maya', lastName: 'K.', schoolName: 'Dauphine', isOnline: true, lastActiveAt: now, sharedEvents: 4),
      Friend(id: 'friend-4', firstName: 'Noah', lastName: 'P.', schoolName: 'Dauphine', lastActiveAt: now.subtract(const Duration(hours: 2)), sharedEvents: 2),
      Friend(id: 'friend-5', firstName: 'Sofia', lastName: 'R.', schoolName: 'Dauphine', lastActiveAt: now.subtract(const Duration(hours: 5)), sharedEvents: 6),
      Friend(id: 'friend-6', firstName: 'Yasmine', lastName: 'T.', schoolName: 'Dauphine', isOnline: true, lastActiveAt: now, sharedEvents: 1),
      Friend(id: 'friend-7', firstName: 'Tom', lastName: 'V.', schoolName: 'Dauphine', lastActiveAt: now.subtract(const Duration(days: 1)), sharedEvents: 2),
      Friend(id: 'friend-8', firstName: 'Adam', lastName: 'G.', schoolName: 'Dauphine', lastActiveAt: now.subtract(const Duration(days: 2)), sharedEvents: 0),
    ];
  }

  void _seedEvents() {
    final DateTime now = DateTime.now();
    _events = <Event>[
      Event(
        id: 'event-neon',
        title: 'Nuit Néon — Édition Campus',
        tagline: 'Trois DJ sets, un dancefloor géant',
        description:
            'Le BDE prend possession du Rex Club pour une nuit electro. Line-up surprise, vestiaire gratuit et navettes depuis le campus jusqu’à 3 h.',
        organizer: OrganizerType.bde,
        organizerName: 'BDE Dauphine',
        venueName: 'Rex Club',
        address: '5 bd Poissonnière, 75002 Paris',
        startsAt: now.add(const Duration(days: 3, hours: 22)),
        endsAt: now.add(const Duration(days: 4, hours: 5)),
        category: EventCategory.party,
        capacity: const EventCapacity(totalSeats: 1200, seatsTaken: 1043, heldSeats: 12),
        tiers: const <PricingTier>[
          PricingTier(id: 'neon-early', kind: PricingKind.earlyBird, label: 'Early bird', priceCents: 1899, currency: 'EUR', remainingSeats: 0),
          PricingTier(id: 'neon-std', kind: PricingKind.standard, label: 'Standard', priceCents: 2499, currency: 'EUR', remainingSeats: 145),
          PricingTier(id: 'neon-squad', kind: PricingKind.squad, label: 'Pack escouade · 3 places', priceCents: 6299, currency: 'EUR', remainingSeats: 40),
        ],
        friendsAttending: const <EventAttendee>[
          EventAttendee(id: 'friend-1', firstName: 'Inès', lastName: 'B.'),
          EventAttendee(id: 'friend-3', firstName: 'Maya', lastName: 'K.'),
          EventAttendee(id: 'friend-6', firstName: 'Yasmine', lastName: 'T.'),
          EventAttendee(id: 'friend-2', firstName: 'Hugo', lastName: 'L.'),
        ],
        tags: const <String>['electro', 'bde', 'paris'],
        isTrending: true,
        isPresenceVisible: true,
      ),
      Event(
        id: 'event-basket',
        title: 'Tournoi Basket Inter-Écoles',
        tagline: 'Ton école a besoin de toi',
        description:
            'Huit écoles, un parquet, une seule coupe. Viens supporter la team Dauphine ou t’inscrire avec ton équipe. Buvette et food trucks sur place.',
        organizer: OrganizerType.bds,
        organizerName: 'BDS Dauphine',
        venueName: 'Gymnase Pierre de Coubertin',
        address: '13 rue de l’Amiral Mouchez, 75013 Paris',
        startsAt: now.add(const Duration(days: 1, hours: 18)),
        endsAt: now.add(const Duration(days: 1, hours: 23)),
        category: EventCategory.sport,
        capacity: const EventCapacity(totalSeats: 600, seatsTaken: 421, heldSeats: 6),
        tiers: const <PricingTier>[
          PricingTier(id: 'basket-std', kind: PricingKind.standard, label: 'Entrée', priceCents: 800, currency: 'EUR', remainingSeats: 173),
          PricingTier(id: 'basket-squad', kind: PricingKind.squad, label: 'Pack tribune · 3 places', priceCents: 2100, currency: 'EUR', remainingSeats: 60),
        ],
        friendsAttending: const <EventAttendee>[
          EventAttendee(id: 'friend-2', firstName: 'Hugo', lastName: 'L.'),
          EventAttendee(id: 'friend-4', firstName: 'Noah', lastName: 'P.'),
          EventAttendee(id: 'friend-5', firstName: 'Sofia', lastName: 'R.'),
        ],
        tags: const <String>['basket', 'bds', 'tournoi'],
        isPresenceVisible: true,
      ),
      Event(
        id: 'event-openair',
        title: 'Open Air Sunset',
        tagline: 'La sunset party sur le toit',
        description:
            'House, disco et vue sur tout Paris. Le BDE transforme la terrasse du campus en club éphémère, avec bar à mocktails et casiers sécurisés.',
        organizer: OrganizerType.bde,
        organizerName: 'BDE Dauphine',
        venueName: 'Rooftop Campus',
        address: 'Place du Maréchal de Lattre, 75016 Paris',
        startsAt: now.add(const Duration(days: 6, hours: 19)),
        endsAt: now.add(const Duration(days: 6, hours: 23, minutes: 30)),
        category: EventCategory.party,
        capacity: const EventCapacity(totalSeats: 2000, seatsTaken: 1633, heldSeats: 8),
        tiers: const <PricingTier>[
          PricingTier(id: 'open-std', kind: PricingKind.standard, label: 'Standard', priceCents: 2200, currency: 'EUR', remainingSeats: 359),
          PricingTier(id: 'open-squad', kind: PricingKind.squad, label: 'Pack escouade · 4 places', priceCents: 7490, currency: 'EUR', remainingSeats: 80),
        ],
        friendsAttending: const <EventAttendee>[
          EventAttendee(id: 'friend-1', firstName: 'Inès', lastName: 'B.'),
          EventAttendee(id: 'friend-3', firstName: 'Maya', lastName: 'K.'),
          EventAttendee(id: 'friend-5', firstName: 'Sofia', lastName: 'R.'),
          EventAttendee(id: 'friend-6', firstName: 'Yasmine', lastName: 'T.'),
          EventAttendee(id: 'friend-8', firstName: 'Adam', lastName: 'G.'),
        ],
        tags: const <String>['house', 'sunset', 'rooftop'],
        isTrending: true,
        isPresenceVisible: true,
      ),
      Event(
        id: 'event-run',
        title: 'Run & Brunch 10K',
        tagline: 'Cours, puis attaque le brunch',
        description:
            'Un 10 km dans le Bois, encadré par le BDS, suivi d’un brunch complet. Allure libre, trois groupes de niveau, kit et médaille inclus.',
        organizer: OrganizerType.bds,
        organizerName: 'BDS Dauphine',
        venueName: 'Bois de Boulogne — Porte de la Muette',
        address: '75016 Paris',
        startsAt: now.add(const Duration(days: 2, hours: 9)),
        endsAt: now.add(const Duration(days: 2, hours: 13)),
        category: EventCategory.sport,
        capacity: const EventCapacity(totalSeats: 300, seatsTaken: 288, heldSeats: 3),
        tiers: const <PricingTier>[
          PricingTier(id: 'run-std', kind: PricingKind.standard, label: 'Dossard + brunch', priceCents: 1200, currency: 'EUR', remainingSeats: 9),
        ],
        friendsAttending: const <EventAttendee>[
          EventAttendee(id: 'friend-2', firstName: 'Hugo', lastName: 'L.'),
          EventAttendee(id: 'friend-7', firstName: 'Tom', lastName: 'V.'),
        ],
        tags: const <String>['running', 'brunch', 'bds'],
        isPresenceVisible: false,
      ),
      Event(
        id: 'event-comedy',
        title: 'Comedy Club Étudiant',
        tagline: 'Rire avant les partiels',
        description:
            'Cinq humoristes, un micro et beaucoup de second degré. Le BDE ouvre la scène du campus aux étudiants, avec un open mic après le show.',
        organizer: OrganizerType.bde,
        organizerName: 'BDE Dauphine',
        venueName: 'Amphi B — Campus',
        address: 'Place du Maréchal de Lattre, 75016 Paris',
        startsAt: now.add(const Duration(days: 9, hours: 20)),
        endsAt: now.add(const Duration(days: 9, hours: 22, minutes: 30)),
        category: EventCategory.culture,
        capacity: const EventCapacity(totalSeats: 250, seatsTaken: 120, heldSeats: 0),
        tiers: const <PricingTier>[
          PricingTier(id: 'comedy-std', kind: PricingKind.standard, label: 'Entrée', priceCents: 1000, currency: 'EUR', remainingSeats: 130),
        ],
        friendsAttending: const <EventAttendee>[
          EventAttendee(id: 'friend-3', firstName: 'Maya', lastName: 'K.'),
        ],
        tags: const <String>['humour', 'culture', 'campus'],
        isPresenceVisible: true,
      ),
      Event(
        id: 'event-ski',
        title: 'Ski Week — Les Arcs',
        tagline: 'Une semaine de poudreuse',
        description:
            'Le BDS organise la semaine au ski : logement, forfaits et navette. Deux niveaux, débutants acceptés, soirées animées chaque nuit.',
        organizer: OrganizerType.bds,
        organizerName: 'BDS Dauphine',
        venueName: 'Les Arcs 1800',
        address: 'Bourg-Saint-Maurice, Savoie',
        startsAt: now.add(const Duration(days: 45, hours: 7)),
        endsAt: now.add(const Duration(days: 52, hours: 20)),
        category: EventCategory.trip,
        capacity: const EventCapacity(totalSeats: 120, seatsTaken: 96, heldSeats: 4),
        tiers: const <PricingTier>[
          PricingTier(id: 'ski-std', kind: PricingKind.standard, label: 'Forfait + logement', priceCents: 23900, currency: 'EUR', remainingSeats: 20),
          PricingTier(id: 'ski-squad', kind: PricingKind.squad, label: 'Pack chambre · 4 personnes', priceCents: 89900, currency: 'EUR', remainingSeats: 5),
        ],
        friendsAttending: const <EventAttendee>[
          EventAttendee(id: 'friend-1', firstName: 'Inès', lastName: 'B.'),
          EventAttendee(id: 'friend-2', firstName: 'Hugo', lastName: 'L.'),
          EventAttendee(id: 'friend-3', firstName: 'Maya', lastName: 'K.'),
          EventAttendee(id: 'friend-4', firstName: 'Noah', lastName: 'P.'),
          EventAttendee(id: 'friend-5', firstName: 'Sofia', lastName: 'R.'),
          EventAttendee(id: 'friend-7', firstName: 'Tom', lastName: 'V.'),
        ],
        tags: const <String>['ski', 'voyage', 'bds'],
        isTrending: true,
        isPresenceVisible: true,
      ),
      Event(
        id: 'event-food',
        title: 'Food Truck Festival',
        tagline: 'Le campus passe en mode street food',
        description:
            'Douze food trucks, un DJ et des tables dehors. Entrée libre pour les étudiants, jeton dégustation offert avec ta place.',
        organizer: OrganizerType.bde,
        organizerName: 'BDE Dauphine',
        venueName: 'Cour d’honneur',
        address: 'Place du Maréchal de Lattre, 75016 Paris',
        startsAt: now.add(const Duration(days: 12, hours: 12)),
        endsAt: now.add(const Duration(days: 12, hours: 17)),
        category: EventCategory.food,
        capacity: const EventCapacity(totalSeats: 800, seatsTaken: 512, heldSeats: 0),
        tiers: const <PricingTier>[
          PricingTier(id: 'food-std', kind: PricingKind.standard, label: 'Entrée + 1 jeton', priceCents: 500, currency: 'EUR', remainingSeats: 288),
        ],
        friendsAttending: const <EventAttendee>[
          EventAttendee(id: 'friend-6', firstName: 'Yasmine', lastName: 'T.'),
          EventAttendee(id: 'friend-8', firstName: 'Adam', lastName: 'G.'),
        ],
        tags: const <String>['street food', 'campus', 'bde'],
        isPresenceVisible: true,
      ),
    ];
  }

  void _seedProfile() {
    _profile = StudentProfile(
      id: 'student-lea',
      firstName: 'Léa',
      lastName: 'Martin',
      email: 'lea.martin@${AppConfig.schoolEmailDomain}',
      schoolName: 'Université Paris-Dauphine',
      campus: 'Paris 16e',
      bio: 'L2 Éco-Gestion · toujours partante pour un plan BDE.',
      interests: const <String>['electro', 'basket', 'brunch', 'voyages'],
      stats: const ProfileStats(
        ticketsCount: 1,
        eventsAttended: 7,
        friendsCount: 8,
        squadsJoined: 3,
      ),
      memberSince: DateTime(2024, 9, 12),
      isDiscreet: false,
    );
    _memberships = <Membership>[
      Membership(
        organizer: OrganizerType.bde,
        isActive: true,
        memberSince: DateTime(2024, 9, 15),
        isPublic: true,
        perks: const <String>['Accès prioritaire', 'After exclusifs', 'Goodies'],
        memberNumber: 'BDE-2024-0812',
      ),
      Membership(
        organizer: OrganizerType.bds,
        isActive: true,
        memberSince: DateTime(2023, 10, 2),
        isPublic: false,
        perks: const <String>['Licence sportive', 'Tournois', 'Ski week'],
        memberNumber: 'BDS-2023-1204',
      ),
    ];
    _notificationSettings = const NotificationSettings(
      quietHoursStart: 0,
      quietHoursEnd: 7,
    );
    _session = const AuthSession(
      userId: 'student-lea',
      email: '',
      firstName: 'Léa',
      lastName: 'Martin',
      schoolName: 'Université Paris-Dauphine',
      memberships: <OrganizerType>[OrganizerType.bde, OrganizerType.bds],
      expiresAt: null,
    );
    _session = _session.copyWith(
      email: 'lea.martin@${AppConfig.schoolEmailDomain}',
    );
  }

  void _seedTickets() {
    final DateTime now = DateTime.now();
    final Event basket = eventById('event-basket');
    _tickets = <Ticket>[
      Ticket(
        id: 'ticket-demo-1',
        eventId: basket.id,
        eventTitle: basket.title,
        eventStartsAt: basket.startsAt,
        venueName: basket.venueName,
        organizerName: basket.organizerName,
        organizer: basket.organizer,
        holderName: _profile.displayName,
        qrPayload: _fakeSignedPayload(ticketId: 'ticket-demo-1', eventId: basket.id),
        shortCode: 'CP0001',
        status: TicketStatus.valid,
        purchasedAt: now.subtract(const Duration(days: 2)),
        amountPaidCents: 800,
        currency: 'EUR',
        seatLabel: 'Place 422',
      ),
    ];
  }

  void _seedActivity() {
    final DateTime now = DateTime.now();
    _activity = <ActivityItem>[
      ActivityItem(
        id: 'activity-1',
        type: ActivityType.friendPurchased,
        actorName: 'Inès',
        eventId: 'event-neon',
        eventTitle: 'Nuit Néon',
        createdAt: now.subtract(const Duration(minutes: 2)),
        friendCount: 4,
        isFriendActivity: true,
      ),
      ActivityItem(
        id: 'activity-2',
        type: ActivityType.squadCreated,
        actorName: 'Hugo',
        eventId: 'event-basket',
        eventTitle: 'Tournoi Basket',
        createdAt: now.subtract(const Duration(minutes: 6)),
        friendCount: 3,
        isFriendActivity: true,
      ),
      ActivityItem(
        id: 'activity-3',
        type: ActivityType.eventTrending,
        actorName: 'CampusPulse',
        eventId: 'event-openair',
        eventTitle: 'Open Air Sunset',
        createdAt: now.subtract(const Duration(minutes: 12)),
        friendCount: 5,
        isFriendActivity: false,
      ),
      ActivityItem(
        id: 'activity-4',
        type: ActivityType.friendGoing,
        actorName: 'Maya',
        eventId: 'event-food',
        eventTitle: 'Food Truck Festival',
        createdAt: now.subtract(const Duration(minutes: 18)),
        friendCount: 2,
        isFriendActivity: true,
      ),
      ActivityItem(
        id: 'activity-5',
        type: ActivityType.friendJoined,
        actorName: 'Yasmine',
        eventId: 'event-run',
        eventTitle: 'Run & Brunch',
        createdAt: now.subtract(const Duration(minutes: 25)),
        friendCount: 1,
        isFriendActivity: true,
      ),
    ];
  }

  @visibleForTesting
  void resetTicketSequence() {
    _ticketSequence = 1;
  }
}

class _MockQuote {
  const _MockQuote({
    required this.quote,
    required this.option,
    required this.referrerId,
  });

  final CheckoutQuote quote;
  final CheckoutOption option;
  final String? referrerId;
}
