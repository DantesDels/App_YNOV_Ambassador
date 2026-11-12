import 'package:campus_pulse/core/errors/result.dart';
import 'event.dart';
import 'event_capacity.dart';
import 'event_filter.dart';

abstract interface class EventRepository {
  Future<Result<List<Event>>> fetchEvents({EventFilter filter = const EventFilter()});

  Future<Result<Event>> fetchEvent(String eventId);

  /// Realtime seat deltas. The stream emits the initial snapshot, then updates.
  Stream<EventCapacity> watchCapacity(String eventId);

  /// GDPR "mode discret": hides the student from the friend activity feed and
  /// from the attendees stack of this event.
  Future<Result<void>> setPresenceVisibility({
    required String eventId,
    required bool isVisible,
  });
}
