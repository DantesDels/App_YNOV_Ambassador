import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/event_repository.dart';

class GetEventsUseCase {
  const GetEventsUseCase(this._repository);

  final EventRepository _repository;

  Future<Result<List<Event>>> call({EventFilter filter = const EventFilter()}) {
    return _repository.fetchEvents(filter: filter);
  }
}
