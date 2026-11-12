import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_attendee.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/ticketing/domain/pricing_tier.dart';
import 'package:campus_pulse/features/events/data/models/event_attendee_dto.dart';
import 'package:campus_pulse/features/events/data/models/event_capacity_dto.dart';
import 'package:campus_pulse/features/events/data/models/event_dto.dart';
import 'package:campus_pulse/features/events/data/models/pricing_tier_dto.dart';

extension EventCapacityDtoMapper on EventCapacityDto {
  EventCapacity toDomain() {
    return EventCapacity(
      totalSeats: totalSeats,
      seatsTaken: seatsTaken,
      heldSeats: heldSeats,
      updatedAt: updatedAt,
    );
  }
}

extension EventAttendeeDtoMapper on EventAttendeeDto {
  EventAttendee toDomain() {
    return EventAttendee(
      id: id,
      firstName: firstName,
      lastName: lastName,
      avatarUrl: avatarUrl,
      isFriend: isFriend,
    );
  }
}

extension PricingTierDtoMapper on PricingTierDto {
  PricingTier toDomain() {
    return PricingTier(
      id: id,
      kind: switch (kind) {
        'early_bird' || 'earlyBird' => PricingKind.earlyBird,
        'squad' => PricingKind.squad,
        _ => PricingKind.standard,
      },
      label: label,
      priceCents: priceCents,
      currency: currency,
      remainingSeats: remainingSeats,
    );
  }
}

extension EventDtoMapper on EventDto {
  Event toDomain() {
    return Event(
      id: id,
      title: title,
      tagline: tagline,
      description: description,
      organizer: OrganizerType.fromApi(organizer),
      organizerName: organizerName,
      venueName: venueName,
      address: address,
      startsAt: startsAt,
      endsAt: endsAt,
      category: EventCategory.fromApi(category),
      capacity: capacity.toDomain(),
      tiers: tiers.map((PricingTierDto tier) => tier.toDomain()).toList(growable: false),
      friendsAttending: friendsAttending
          .map((EventAttendeeDto attendee) => attendee.toDomain())
          .toList(growable: false),
      tags: tags,
      coverUrl: coverUrl,
      isTrending: isTrending,
      isPresenceVisible: isPresenceVisible,
      squadId: squadId,
    );
  }
}
