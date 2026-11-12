import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/core/mock/mock_campus_store.dart';
import 'package:campus_pulse/features/auth/domain/auth_repository.dart';
import 'package:campus_pulse/features/auth/domain/auth_session.dart';
import 'package:campus_pulse/features/auth/domain/otp_challenge.dart';
import 'package:campus_pulse/features/auth/domain/school_email.dart';
import 'package:campus_pulse/features/auth/domain/sso_provider.dart';

/// Demo implementation backed by [MockCampusStore].
///
/// The OTP is always `123456`, and a hint is displayed on the login screen when
/// the mock backend is active.
class MockAuthRepository implements AuthRepository {
  const MockAuthRepository(this._store);

  final MockCampusStore _store;

  @override
  Future<Result<OtpChallenge>> requestOtp(SchoolEmail email) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    return Success<OtpChallenge>(_store.requestOtp(email.value));
  }

  @override
  Future<Result<AuthSession>> verifyOtp({
    required String challengeId,
    required String code,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 650));
    try {
      return Success<AuthSession>(
        _store.verifyOtp(challengeId: challengeId, code: code),
      );
    } on Object catch (error) {
      return Failed<AuthSession>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<AuthSession>> signInWithSso(SsoProvider provider) async {
    await Future<void>.delayed(const Duration(milliseconds: 600));
    return Success<AuthSession>(_store.signInWithSso());
  }

  @override
  Future<Result<AuthSession?>> restoreSession() async {
    return Success<AuthSession?>(_store.restoreSession());
  }

  @override
  Future<Result<void>> signOut() async {
    _store.signOut();
    return const Success<void>(null);
  }
}
