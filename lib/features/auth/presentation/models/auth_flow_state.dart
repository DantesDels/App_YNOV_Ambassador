import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/auth/domain/otp_challenge.dart';

part 'auth_flow_state.freezed.dart';

@freezed
abstract class AuthFlowState with _$AuthFlowState {
  const factory AuthFlowState({
    @Default('') String email,
    OtpChallenge? challenge,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _AuthFlowState;

  const AuthFlowState._();

  bool get isOtpStep => challenge != null;

  bool get canVerify => challenge != null && !challenge!.isExpired && !isSubmitting;
}
