import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/profile/domain/profile_repository.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';

class ToggleDiscreetModeUseCase {
  const ToggleDiscreetModeUseCase(this._repository);

  final ProfileRepository _repository;

  Future<Result<StudentProfile>> call(bool enabled) => _repository.setDiscreetMode(enabled);
}
