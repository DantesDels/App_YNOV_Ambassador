import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/core/security/security_providers.dart';
import 'package:campus_pulse/features/auth/data/providers/auth_data_providers.dart';
import 'package:campus_pulse/features/auth/domain/auth_session.dart';
import 'package:campus_pulse/features/auth/domain/sso_provider.dart';
import 'package:campus_pulse/features/auth/domain/usecases/request_otp_use_case.dart';
import 'package:campus_pulse/features/auth/domain/usecases/restore_session_use_case.dart';
import 'package:campus_pulse/features/auth/domain/usecases/sign_in_with_sso_use_case.dart';
import 'package:campus_pulse/features/auth/domain/usecases/sign_out_use_case.dart';
import 'package:campus_pulse/features/auth/domain/usecases/verify_otp_use_case.dart';
import 'package:campus_pulse/features/auth/domain/usecases/verify_school_email_use_case.dart';
import 'package:campus_pulse/features/auth/presentation/models/auth_flow_state.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
RequestOtpUseCase requestOtpUseCase(Ref ref) =>
    RequestOtpUseCase(ref.watch(authRepositoryProvider));

@Riverpod(keepAlive: true)
VerifyOtpUseCase verifyOtpUseCase(Ref ref) =>
    VerifyOtpUseCase(ref.watch(authRepositoryProvider));

@Riverpod(keepAlive: true)
SignInWithSsoUseCase signInWithSsoUseCase(Ref ref) =>
    SignInWithSsoUseCase(ref.watch(authRepositoryProvider));

@Riverpod(keepAlive: true)
RestoreSessionUseCase restoreSessionUseCase(Ref ref) =>
    RestoreSessionUseCase(ref.watch(authRepositoryProvider));

@Riverpod(keepAlive: true)
SignOutUseCase signOutUseCase(Ref ref) =>
    SignOutUseCase(ref.watch(authRepositoryProvider));

@Riverpod(keepAlive: true)
VerifySchoolEmailUseCase verifySchoolEmailUseCase(Ref ref) =>
    const VerifySchoolEmailUseCase();

/// Owns the session and feeds the router guard.
@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  Future<AuthSession?> build() async {
    final StreamSubscription<void> subscription = ref
        .read(sessionEventBusProvider)
        .onSessionExpired
        .listen((_) => _expireSession());
    ref.onDispose(subscription.cancel);

    final result = await ref.read(restoreSessionUseCaseProvider)();
    return result.fold(
      onSuccess: (AuthSession? session) => session,
      onFailure: (failure) => null,
    );
  }

  void completeSignIn(AuthSession session) {
    state = AsyncData<AuthSession?>(session);
  }

  Future<void> signOut() async {
    state = const AsyncLoading<AuthSession?>();
    await ref.read(signOutUseCaseProvider)();
    state = const AsyncData<AuthSession?>(null);
  }

  Future<void> refresh() async {
    state = const AsyncLoading<AuthSession?>();
    state = await AsyncValue.guard(() async {
      final result = await ref.read(restoreSessionUseCaseProvider)();
      return result.fold(
        onSuccess: (AuthSession? session) => session,
        onFailure: (failure) => throw FailureException(failure),
      );
    });
  }

  void _expireSession() {
    state = const AsyncData<AuthSession?>(null);
  }
}

/// Convenience selector used by widgets that only need the signed-in student.
@riverpod
AuthSession? currentSession(Ref ref) =>
    ref.watch(authControllerProvider).value;

/// Drives the email -> OTP -> session flow used by the login pages.
@Riverpod(keepAlive: true)
class AuthFlowController extends _$AuthFlowController {
  @override
  AuthFlowState build() => const AuthFlowState();

  Future<bool> requestOtp(String email) async {
    state = state.copyWith(
      email: email.trim(),
      isSubmitting: true,
      errorMessage: null,
    );
    final result = await ref.read(requestOtpUseCaseProvider)(email);
    return result.fold(
      onSuccess: (challenge) {
        state = state.copyWith(
          isSubmitting: false,
          challenge: challenge,
          email: challenge.email,
          errorMessage: null,
        );
        return true;
      },
      onFailure: (failure) {
        state = state.copyWith(
          isSubmitting: false,
          errorMessage: failure.userMessage,
        );
        return false;
      },
    );
  }

  Future<bool> verifyOtp(String code) async {
    final challenge = state.challenge;
    if (challenge == null) {
      state = state.copyWith(
        errorMessage: 'Ta demande de code a expiré. Recommence.',
      );
      return false;
    }
    state = state.copyWith(isSubmitting: true, errorMessage: null);
    final result = await ref.read(verifyOtpUseCaseProvider)(
      challengeId: challenge.id,
      code: code,
    );
    return result.fold(
      onSuccess: (session) {
        state = state.copyWith(isSubmitting: false, challenge: null);
        ref.read(authControllerProvider.notifier).completeSignIn(session);
        return true;
      },
      onFailure: (failure) {
        state = state.copyWith(
          isSubmitting: false,
          errorMessage: failure.userMessage,
        );
        return false;
      },
    );
  }

  Future<bool> signInWithSso(SsoProvider provider) async {
    state = state.copyWith(isSubmitting: true, errorMessage: null);
    final result = await ref.read(signInWithSsoUseCaseProvider)(provider);
    return result.fold(
      onSuccess: (session) {
        state = state.copyWith(isSubmitting: false);
        ref.read(authControllerProvider.notifier).completeSignIn(session);
        return true;
      },
      onFailure: (failure) {
        state = state.copyWith(
          isSubmitting: false,
          errorMessage: failure.userMessage,
        );
        return false;
      },
    );
  }

  void reset() {
    state = const AuthFlowState();
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}
