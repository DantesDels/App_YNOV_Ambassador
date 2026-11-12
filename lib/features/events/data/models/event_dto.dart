import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_attendee_dto.dart';
import 'event_capacity_dto.dart';
import 'pricing_tier_dto.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
abstract class EventDto with _$EventDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory EventDto({
    required String id,
    required String title,
    required String tagline,
    required String description,
    required String organizer,
    required String organizerName,
    required String venueName,
    required String address,
    required DateTime startsAt,
    required DateTime endsAt,
    required String category,
    required EventCapacityDto capacity,
    required List<PricingTierDto> tiers,
    @Default(<EventAttendeeDto>[]) List<EventAttendeeDto> friendsAttending,
    @Default(<String>[]) List<String> tags,
    String? coverUrl,
    @Default(false) bool isTrending,
    @Default(false) bool isPresenceVisible,
    String? squadId,
  }) = _EventDto;

  factory EventDto.fromJson(Map<String, dynamic> json) => _$EventDtoFromJson(json);
}
