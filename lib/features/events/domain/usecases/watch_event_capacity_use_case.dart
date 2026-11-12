import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/event_repository.dart';

class WatchEventCapacityUseCase {
  const WatchEventCapacityUseCase(this._repository);

  final EventRepository _repository;

  Stream<EventCapacity> call(String eventId) => _repository.watchCapacity(eventId);
}
