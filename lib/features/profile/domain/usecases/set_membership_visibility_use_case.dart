import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/profile_repository.dart';

class SetMembershipVisibilityUseCase {
  const SetMembershipVisibilityUseCase(this._repository);

  final ProfileRepository _repository;

  Future<Result<Membership>> call({
    required OrganizerType organizer,
    required bool isPublic,
  }) {
    return _repository.setMembershipVisibility(organizer: organizer, isPublic: isPublic);
  }
}
