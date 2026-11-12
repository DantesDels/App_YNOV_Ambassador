import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/event_repository.dart';

/// GDPR toggle: when hidden, the student disappears from attendee stacks and
/// from the friend activity feed. The server enforces the rule.
class SetPresenceVisibilityUseCase {
  const SetPresenceVisibilityUseCase(this._repository);

  final EventRepository _repository;

  Future<Result<void>> call({required String eventId, required bool isVisible}) {
    if (eventId.trim().isEmpty) {
      return Future<Result<void>>.value(
        const Failed<void>(ValidationFailure('Événement introuvable.')),
      );
    }
    return _repository.setPresenceVisibility(eventId: eventId, isVisible: isVisible);
  }
}
