import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';

/// Pushes a notification to the student's campus friends.
class NotifyFriendsUseCase {
  const NotifyFriendsUseCase(this._repository);

  final SocialRepository _repository;

  Future<Result<List<Friend>>> call(Event event) {
    if (event.isPast) {
      return Future<Result<List<Friend>>>.value(
        const Failed<List<Friend>>(
          ValidationFailure('Cet événement est déjà terminé.'),
        ),
      );
    }
    if (event.isSoldOut) {
      return Future<Result<List<Friend>>>.value(
        const Failed<List<Friend>>(
          ValidationFailure('Plus de places disponibles : impossible d’inviter.'),
        ),
      );
    }
    return _repository.notifyFriends(eventId: event.id);
  }
}
