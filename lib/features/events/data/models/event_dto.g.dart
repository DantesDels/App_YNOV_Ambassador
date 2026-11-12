// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventDto _$EventDtoFromJson(Map<String, dynamic> json) => _EventDto(
  id: json['id'] as String,
  title: json['title'] as String,
  tagline: json['tagline'] as String,
  description: json['description'] as String,
  organizer: json['organizer'] as String,
  organizerName: json['organizer_name'] as String,
  venueName: json['venue_name'] as String,
  address: json['address'] as String,
  startsAt: DateTime.parse(json['starts_at'] as String),
  endsAt: DateTime.parse(json['ends_at'] as String),
  category: json['category'] as String,
  capacity: EventCapacityDto.fromJson(json['capacity'] as Map<String, dynamic>),
  tiers: (json['tiers'] as List<dynamic>)
      .map((e) => PricingTierDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  friendsAttending:
      (json['friends_attending'] as List<dynamic>?)
          ?.map((e) => EventAttendeeDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <EventAttendeeDto>[],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  coverUrl: json['cover_url'] as String?,
  isTrending: json['is_trending'] as bool? ?? false,
  isPresenceVisible: json['is_presence_visible'] as bool? ?? false,
  squadId: json['squad_id'] as String?,
);

Map<String, dynamic> _$EventDtoToJson(_EventDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'tagline': instance.tagline,
  'description': instance.description,
  'organizer': instance.organizer,
  'organizer_name': instance.organizerName,
  'venue_name': instance.venueName,
  'address': instance.address,
  'starts_at': instance.startsAt.toIso8601String(),
  'ends_at': instance.endsAt.toIso8601String(),
  'category': instance.category,
  'capacity': instance.capacity.toJson(),
  'tiers': instance.tiers.map((e) => e.toJson()).toList(),
  'friends_attending': instance.friendsAttending
      .map((e) => e.toJson())
      .toList(),
  'tags': instance.tags,
  'cover_url': instance.coverUrl,
  'is_trending': instance.isTrending,
  'is_presence_visible': instance.isPresenceVisible,
  'squad_id': instance.squadId,
};
