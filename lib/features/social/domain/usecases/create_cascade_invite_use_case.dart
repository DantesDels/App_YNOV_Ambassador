import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';

class CreateCascadeInviteUseCase {
  const CreateCascadeInviteUseCase(this._repository);

  final SocialRepository _repository;

  Future<Result<CascadeInvite>> call(String eventId) {
    if (eventId.trim().isEmpty) {
      return Future<Result<CascadeInvite>>.value(
        const Failed<CascadeInvite>(ValidationFailure('Événement introuvable.')),
      );
    }
    return _repository.createCascadeInvite(eventId);
  }
}
