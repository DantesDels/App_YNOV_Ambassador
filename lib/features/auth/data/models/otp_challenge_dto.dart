import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_challenge_dto.freezed.dart';
part 'otp_challenge_dto.g.dart';

@freezed
abstract class OtpChallengeDto with _$OtpChallengeDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OtpChallengeDto({
    required String id,
    required String email,
    required DateTime expiresAt,
    required DateTime resendAvailableAt,
    @Default('email') String channel,
    @Default(5) int attemptsRemaining,
  }) = _OtpChallengeDto;

  factory OtpChallengeDto.fromJson(Map<String, dynamic> json) =>
      _$OtpChallengeDtoFromJson(json);
}
