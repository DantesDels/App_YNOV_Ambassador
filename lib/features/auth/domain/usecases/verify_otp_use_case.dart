import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/auth/domain/auth_repository.dart';
import 'package:campus_pulse/features/auth/domain/auth_session.dart';

class VerifyOtpUseCase {
  const VerifyOtpUseCase(this._repository);

  final AuthRepository _repository;

  Future<Result<AuthSession>> call({
    required String challengeId,
    required String code,
  }) {
    final String normalizedCode = code.trim();
    if (challengeId.trim().isEmpty) {
      return Future<Result<AuthSession>>.value(
        const Failed<AuthSession>(ValidationFailure('Demande de code expirée, recommence.')),
      );
    }
    if (!RegExp(r'^\d{6}$').hasMatch(normalizedCode)) {
      return Future<Result<AuthSession>>.value(
        const Failed<AuthSession>(ValidationFailure('Le code doit contenir 6 chiffres.')),
      );
    }
    return _repository.verifyOtp(challengeId: challengeId, code: normalizedCode);
  }
}
