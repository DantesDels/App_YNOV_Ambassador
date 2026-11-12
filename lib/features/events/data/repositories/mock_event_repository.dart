import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/core/mock/mock_campus_store.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/event_repository.dart';

class MockEventRepository implements EventRepository {
  const MockEventRepository(this._store);

  final MockCampusStore _store;

  @override
  Future<Result<List<Event>>> fetchEvents({EventFilter filter = const EventFilter()}) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return Success<List<Event>>(_store.filterEvents(filter));
  }

  @override
  Future<Result<Event>> fetchEvent(String eventId) async {
    await Future<void>.delayed(const Duration(milliseconds: 260));
    try {
      return Success<Event>(_store.eventById(eventId));
    } on Object catch (error) {
      return Failed<Event>(FailureMapper.from(error));
    }
  }

  @override
  Stream<EventCapacity> watchCapacity(String eventId) => _store.watchCapacity(eventId);

  @override
  Future<Result<void>> setPresenceVisibility({
    required String eventId,
    required bool isVisible,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    try {
      await _store.setPresenceVisibility(eventId: eventId, isVisible: isVisible);
      return const Success<void>(null);
    } on Object catch (error) {
      return Failed<void>(FailureMapper.from(error));
    }
  }
}
