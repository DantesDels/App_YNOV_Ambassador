import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/features/events/data/providers/event_data_providers.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/events/domain/usecases/get_event_detail_use_case.dart';
import 'package:campus_pulse/features/events/domain/usecases/get_events_use_case.dart';
import 'package:campus_pulse/features/events/domain/usecases/set_presence_visibility_use_case.dart';
import 'package:campus_pulse/features/events/domain/usecases/watch_event_capacity_use_case.dart';

part 'event_providers.g.dart';

@Riverpod(keepAlive: true)
GetEventsUseCase getEventsUseCase(Ref ref) =>
    GetEventsUseCase(ref.watch(eventRepositoryProvider));

@Riverpod(keepAlive: true)
GetEventDetailUseCase getEventDetailUseCase(Ref ref) =>
    GetEventDetailUseCase(ref.watch(eventRepositoryProvider));

@Riverpod(keepAlive: true)
WatchEventCapacityUseCase watchEventCapacityUseCase(Ref ref) =>
    WatchEventCapacityUseCase(ref.watch(eventRepositoryProvider));

@Riverpod(keepAlive: true)
SetPresenceVisibilityUseCase setPresenceVisibilityUseCase(Ref ref) =>
    SetPresenceVisibilityUseCase(ref.watch(eventRepositoryProvider));

@Riverpod(keepAlive: true)
class EventsFilterController extends _$EventsFilterController {
  @override
  EventFilter build() => const EventFilter();

  void setCategory(EventCategory category) {
    state = state.copyWith(category: category);
  }

  void toggleOrganizer(OrganizerType organizer) {
    state = state.copyWith(
      organizer: state.organizer == organizer ? null : organizer,
    );
  }

  void setQuery(String query) {
    state = state.copyWith(query: query);
  }

  void toggleOnlyAvailable() {
    state = state.copyWith(onlyAvailable: !state.onlyAvailable);
  }

  void setSort(EventSort sort) {
    state = state.copyWith(sort: sort);
  }

  void reset() {
    state = const EventFilter();
  }
}

@riverpod
class EventsController extends _$EventsController {
  late EventFilter _filter;

  @override
  Future<List<Event>> build(EventFilter filter) async {
    _filter = filter;
    return _load(filter);
  }

  Future<void> refresh() async {
    state = const AsyncLoading<List<Event>>();
    state = await AsyncValue.guard(() => _load(_filter));
  }

  Future<List<Event>> _load(EventFilter filter) async {
    final result = await ref.read(getEventsUseCaseProvider)(filter: filter);
    return result.fold(
      onSuccess: (List<Event> events) => events,
      onFailure: (failure) => throw FailureException(failure),
    );
  }
}

@riverpod
Future<Event> eventDetail(Ref ref, String eventId) async {
  final result = await ref.watch(getEventDetailUseCaseProvider)(eventId);
  return result.fold(
    onSuccess: (Event event) => event,
    onFailure: (failure) => throw FailureException(failure),
  );
}

@riverpod
Stream<EventCapacity> eventCapacity(Ref ref, String eventId) {
  return ref.watch(watchEventCapacityUseCaseProvider)(eventId);
}

@Riverpod(keepAlive: true)
class EventPresenceController extends _$EventPresenceController {
  late String _eventId;

  @override
  bool build(String eventId) {
    _eventId = eventId;
    final Event? event = ref.watch(eventDetailProvider(eventId)).value;
    return event?.isPresenceVisible ?? true;
  }

  Future<String?> toggle() async {
    final bool next = !state;
    final result = await ref.read(setPresenceVisibilityUseCaseProvider)(
      eventId: _eventId,
      isVisible: next,
    );
    return result.fold(
      onSuccess: (_) {
        state = next;
        ref.invalidate(eventDetailProvider(_eventId));
        return null;
      },
      onFailure: (failure) => failure.userMessage,
    );
  }
}
