import 'package:campus_pulse/core/errors/result.dart';
import 'auth_session.dart';
import 'otp_challenge.dart';
import 'school_email.dart';
import 'sso_provider.dart';

abstract interface class AuthRepository {
  Future<Result<OtpChallenge>> requestOtp(SchoolEmail email);

  /// Verifies the 6-digit code and persists the JWT pair in secure storage.
  Future<Result<AuthSession>> verifyOtp({
    required String challengeId,
    required String code,
  });

  Future<Result<AuthSession>> signInWithSso(SsoProvider provider);

  /// Restores the session from the Keychain/Keystore, refreshing the token if
  /// needed. Returns `null` when there is no valid session.
  Future<Result<AuthSession?>> restoreSession();

  Future<Result<void>> signOut();
}
