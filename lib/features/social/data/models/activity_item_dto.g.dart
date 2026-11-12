// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityItemDto _$ActivityItemDtoFromJson(Map<String, dynamic> json) =>
    _ActivityItemDto(
      id: json['id'] as String,
      type: json['type'] as String,
      actorName: json['actor_name'] as String,
      eventId: json['event_id'] as String,
      eventTitle: json['event_title'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      actorAvatarUrl: json['actor_avatar_url'] as String?,
      friendCount: (json['friend_count'] as num?)?.toInt() ?? 1,
      isFriendActivity: json['is_friend_activity'] as bool? ?? false,
    );

Map<String, dynamic> _$ActivityItemDtoToJson(_ActivityItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'actor_name': instance.actorName,
      'event_id': instance.eventId,
      'event_title': instance.eventTitle,
      'created_at': instance.createdAt.toIso8601String(),
      'actor_avatar_url': instance.actorAvatarUrl,
      'friend_count': instance.friendCount,
      'is_friend_activity': instance.isFriendActivity,
    };
