import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/auth/domain/auth_repository.dart';
import 'package:campus_pulse/features/auth/domain/auth_session.dart';
import 'package:campus_pulse/features/auth/domain/sso_provider.dart';

class SignInWithSsoUseCase {
  const SignInWithSsoUseCase(this._repository);

  final AuthRepository _repository;

  Future<Result<AuthSession>> call(SsoProvider provider) {
    return _repository.signInWithSso(provider);
  }
}
