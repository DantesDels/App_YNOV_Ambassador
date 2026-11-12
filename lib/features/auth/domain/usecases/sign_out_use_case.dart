import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/auth/domain/auth_repository.dart';

class SignOutUseCase {
  const SignOutUseCase(this._repository);

  final AuthRepository _repository;

  Future<Result<void>> call() => _repository.signOut();
}
