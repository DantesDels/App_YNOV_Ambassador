// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FriendDto _$FriendDtoFromJson(Map<String, dynamic> json) => _FriendDto(
  id: json['id'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  schoolName: json['school_name'] as String? ?? '',
  lastActiveAt: json['last_active_at'] == null
      ? null
      : DateTime.parse(json['last_active_at'] as String),
  isOnline: json['is_online'] as bool? ?? false,
  sharedEvents: (json['shared_events'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$FriendDtoToJson(_FriendDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar_url': instance.avatarUrl,
      'school_name': instance.schoolName,
      'last_active_at': instance.lastActiveAt?.toIso8601String(),
      'is_online': instance.isOnline,
      'shared_events': instance.sharedEvents,
    };
