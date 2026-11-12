import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_challenge.freezed.dart';

enum OtpDeliveryChannel { email, sms }

/// Server-issued OTP challenge. The code itself never reaches the client.
@freezed
abstract class OtpChallenge with _$OtpChallenge {
  const factory OtpChallenge({
    required String id,
    required String email,
    required DateTime expiresAt,
    required DateTime resendAvailableAt,
    @Default(OtpDeliveryChannel.email) OtpDeliveryChannel channel,
    @Default(5) int attemptsRemaining,
  }) = _OtpChallenge;

  const OtpChallenge._();

  Duration get remaining => _positive(expiresAt.difference(DateTime.now()));

  Duration get resendCooldown => _positive(resendAvailableAt.difference(DateTime.now()));

  bool get isExpired => remaining == Duration.zero;

  bool get canResend => resendCooldown == Duration.zero;

  static Duration _positive(Duration duration) => duration.isNegative ? Duration.zero : duration;
}
