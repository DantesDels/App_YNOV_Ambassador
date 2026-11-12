import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/event_repository.dart';
import 'package:campus_pulse/features/events/data/datasources/event_api_data_source.dart';

class EventRepositoryImpl implements EventRepository {
  const EventRepositoryImpl(this._dataSource);

  final EventApiDataSource _dataSource;

  @override
  Future<Result<List<Event>>> fetchEvents({EventFilter filter = const EventFilter()}) async {
    try {
      final List<Event> events = await _dataSource.fetchEvents(filter: filter);
      return Success<List<Event>>(events);
    } on Object catch (error) {
      return Failed<List<Event>>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<Event>> fetchEvent(String eventId) async {
    try {
      return Success<Event>(await _dataSource.fetchEvent(eventId));
    } on Object catch (error) {
      return Failed<Event>(FailureMapper.from(error));
    }
  }

  @override
  Stream<EventCapacity> watchCapacity(String eventId) {
    return _dataSource.watchCapacity(eventId);
  }

  @override
  Future<Result<void>> setPresenceVisibility({
    required String eventId,
    required bool isVisible,
  }) async {
    try {
      await _dataSource.setPresenceVisibility(eventId: eventId, isVisible: isVisible);
      return const Success<void>(null);
    } on Object catch (error) {
      return Failed<void>(FailureMapper.from(error));
    }
  }
}
