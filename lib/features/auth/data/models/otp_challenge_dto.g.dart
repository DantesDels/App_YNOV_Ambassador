// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_challenge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpChallengeDto _$OtpChallengeDtoFromJson(Map<String, dynamic> json) =>
    _OtpChallengeDto(
      id: json['id'] as String,
      email: json['email'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      resendAvailableAt: DateTime.parse(json['resend_available_at'] as String),
      channel: json['channel'] as String? ?? 'email',
      attemptsRemaining: (json['attempts_remaining'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$OtpChallengeDtoToJson(_OtpChallengeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'expires_at': instance.expiresAt.toIso8601String(),
      'resend_available_at': instance.resendAvailableAt.toIso8601String(),
      'channel': instance.channel,
      'attempts_remaining': instance.attemptsRemaining,
    };
