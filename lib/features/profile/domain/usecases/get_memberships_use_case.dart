import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/profile_repository.dart';

class GetMembershipsUseCase {
  const GetMembershipsUseCase(this._repository);

  final ProfileRepository _repository;

  Future<Result<List<Membership>>> call() => _repository.fetchMemberships();
}
