import 'package:campus_pulse/features/auth/domain/auth_session.dart';
import 'package:campus_pulse/features/auth/domain/otp_challenge.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/auth/data/models/auth_session_dto.dart';
import 'package:campus_pulse/features/auth/data/models/otp_challenge_dto.dart';
import 'package:campus_pulse/features/auth/data/models/student_dto.dart';

extension OtpChallengeDtoMapper on OtpChallengeDto {
  OtpChallenge toDomain() {
    return OtpChallenge(
      id: id,
      email: email,
      expiresAt: expiresAt,
      resendAvailableAt: resendAvailableAt,
      channel: switch (channel) {
        'sms' => OtpDeliveryChannel.sms,
        _ => OtpDeliveryChannel.email,
      },
      attemptsRemaining: attemptsRemaining,
    );
  }
}

extension StudentDtoMapper on StudentDto {
  AuthSession toSession({
    required String accessToken,
    required String refreshToken,
    DateTime? expiresAt,
    bool isNewAccount = false,
  }) {
    return AuthSession(
      userId: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      schoolName: schoolName,
      memberships: memberships
          .map((String value) => OrganizerType.fromApi(value))
          .toSet()
          .toList(growable: false),
      avatarUrl: avatarUrl,
      expiresAt: expiresAt,
      isNewAccount: isNewAccount,
    );
  }
}

extension AuthSessionDtoMapper on AuthSessionDto {
  AuthSession toDomain() {
    return student.toSession(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresAt: accessTokenExpiresAt,
      isNewAccount: isNewAccount,
    );
  }
}
