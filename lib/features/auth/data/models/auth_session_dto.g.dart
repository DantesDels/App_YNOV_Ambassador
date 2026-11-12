// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionDto _$AuthSessionDtoFromJson(Map<String, dynamic> json) =>
    _AuthSessionDto(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      student: StudentDto.fromJson(json['student'] as Map<String, dynamic>),
      accessTokenExpiresAt: json['access_token_expires_at'] == null
          ? null
          : DateTime.parse(json['access_token_expires_at'] as String),
      isNewAccount: json['is_new_account'] as bool? ?? false,
    );

Map<String, dynamic> _$AuthSessionDtoToJson(
  _AuthSessionDto instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'student': instance.student.toJson(),
  'access_token_expires_at': instance.accessTokenExpiresAt?.toIso8601String(),
  'is_new_account': instance.isNewAccount,
};
