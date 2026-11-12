// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_attendee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventAttendeeDto _$EventAttendeeDtoFromJson(Map<String, dynamic> json) =>
    _EventAttendeeDto(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      isFriend: json['is_friend'] as bool? ?? true,
    );

Map<String, dynamic> _$EventAttendeeDtoToJson(_EventAttendeeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar_url': instance.avatarUrl,
      'is_friend': instance.isFriend,
    };
