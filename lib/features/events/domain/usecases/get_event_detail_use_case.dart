import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_repository.dart';

class GetEventDetailUseCase {
  const GetEventDetailUseCase(this._repository);

  final EventRepository _repository;

  Future<Result<Event>> call(String eventId) {
    if (eventId.trim().isEmpty) {
      return Future<Result<Event>>.value(
        const Failed<Event>(ValidationFailure('Identifiant d’événement manquant.')),
      );
    }
    return _repository.fetchEvent(eventId);
  }
}
