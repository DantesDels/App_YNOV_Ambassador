import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/ticketing/domain/pricing_tier.dart';
import 'event_attendee.dart';
import 'event_capacity.dart';
import 'event_filter.dart';
import 'event_pricing.dart';
import 'organizer_type.dart';

part 'event.freezed.dart';

/// A published event. Everything money- or seat-related is server-computed and
/// embedded in the payload.
@freezed
abstract class Event with _$Event {
  const factory Event({
    required String id,
    required String title,
    required String tagline,
    required String description,
    required OrganizerType organizer,
    required String organizerName,
    required String venueName,
    required String address,
    required DateTime startsAt,
    required DateTime endsAt,
    required EventCategory category,
    required EventCapacity capacity,
    required List<PricingTier> tiers,
    @Default(<EventAttendee>[]) List<EventAttendee> friendsAttending,
    @Default(<String>[]) List<String> tags,
    String? coverUrl,
    @Default(false) bool isTrending,
    @Default(false) bool isPresenceVisible,
    String? squadId,
  }) = _Event;

  const Event._();

  EventPricing get pricing => EventPricing.fromTiers(tiers);

  bool get isSoldOut => capacity.isSoldOut;

  bool get isHappeningSoon {
    final Duration untilStart = startsAt.difference(DateTime.now());
    if (untilStart.isNegative) {
      return endsAt.isAfter(DateTime.now());
    }
    return untilStart.inHours <= 6;
  }

  bool get isOngoing => startsAt.isBefore(DateTime.now()) && endsAt.isAfter(DateTime.now());

  bool get isPast => endsAt.isBefore(DateTime.now());

  bool get hasFriendsAttending => friendsAttending.isNotEmpty;

  int get friendsAttendingCount => friendsAttending.length;

  String get locationLabel => address.trim().isEmpty ? venueName : '$venueName · $address';

  List<PricingTier> get bookableTiers => tiers
      .where((PricingTier tier) => tier.remainingSeats == null || tier.remainingSeats! > 0)
      .toList(growable: false);

  String get shareHeadline => '$title · $organizerName';
}
