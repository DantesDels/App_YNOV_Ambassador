// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getEventsUseCase)
final getEventsUseCaseProvider = GetEventsUseCaseProvider._();

final class GetEventsUseCaseProvider
    extends
        $FunctionalProvider<
          GetEventsUseCase,
          GetEventsUseCase,
          GetEventsUseCase
        >
    with $Provider<GetEventsUseCase> {
  GetEventsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEventsUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEventsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetEventsUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetEventsUseCase create(Ref ref) {
    return getEventsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEventsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEventsUseCase>(value),
    );
  }
}

String _$getEventsUseCaseHash() => r'a485307c091c5549c2fd925ee879d60039598e97';

@ProviderFor(getEventDetailUseCase)
final getEventDetailUseCaseProvider = GetEventDetailUseCaseProvider._();

final class GetEventDetailUseCaseProvider
    extends
        $FunctionalProvider<
          GetEventDetailUseCase,
          GetEventDetailUseCase,
          GetEventDetailUseCase
        >
    with $Provider<GetEventDetailUseCase> {
  GetEventDetailUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEventDetailUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEventDetailUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetEventDetailUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetEventDetailUseCase create(Ref ref) {
    return getEventDetailUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEventDetailUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEventDetailUseCase>(value),
    );
  }
}

String _$getEventDetailUseCaseHash() =>
    r'fa789578bd70668d4f76501f7ecb070b6892b45c';

@ProviderFor(watchEventCapacityUseCase)
final watchEventCapacityUseCaseProvider = WatchEventCapacityUseCaseProvider._();

final class WatchEventCapacityUseCaseProvider
    extends
        $FunctionalProvider<
          WatchEventCapacityUseCase,
          WatchEventCapacityUseCase,
          WatchEventCapacityUseCase
        >
    with $Provider<WatchEventCapacityUseCase> {
  WatchEventCapacityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchEventCapacityUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchEventCapacityUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchEventCapacityUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchEventCapacityUseCase create(Ref ref) {
    return watchEventCapacityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchEventCapacityUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchEventCapacityUseCase>(value),
    );
  }
}

String _$watchEventCapacityUseCaseHash() =>
    r'925f408eb5c703e056f0da2320e5351f0d806ae3';

@ProviderFor(setPresenceVisibilityUseCase)
final setPresenceVisibilityUseCaseProvider =
    SetPresenceVisibilityUseCaseProvider._();

final class SetPresenceVisibilityUseCaseProvider
    extends
        $FunctionalProvider<
          SetPresenceVisibilityUseCase,
          SetPresenceVisibilityUseCase,
          SetPresenceVisibilityUseCase
        >
    with $Provider<SetPresenceVisibilityUseCase> {
  SetPresenceVisibilityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setPresenceVisibilityUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setPresenceVisibilityUseCaseHash();

  @$internal
  @override
  $ProviderElement<SetPresenceVisibilityUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SetPresenceVisibilityUseCase create(Ref ref) {
    return setPresenceVisibilityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SetPresenceVisibilityUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SetPresenceVisibilityUseCase>(value),
    );
  }
}

String _$setPresenceVisibilityUseCaseHash() =>
    r'df41c888940c2a940fffcb932aff474bb71368d8';

@ProviderFor(EventsFilterController)
final eventsFilterControllerProvider = EventsFilterControllerProvider._();

final class EventsFilterControllerProvider
    extends $NotifierProvider<EventsFilterController, EventFilter> {
  EventsFilterControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventsFilterControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventsFilterControllerHash();

  @$internal
  @override
  EventsFilterController create() => EventsFilterController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EventFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EventFilter>(value),
    );
  }
}

String _$eventsFilterControllerHash() =>
    r'11559837b490065668b61f8ca289a7404d63447d';

abstract class _$EventsFilterController extends $Notifier<EventFilter> {
  EventFilter build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<EventFilter, EventFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EventFilter, EventFilter>,
              EventFilter,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(EventsController)
final eventsControllerProvider = EventsControllerFamily._();

final class EventsControllerProvider
    extends $AsyncNotifierProvider<EventsController, List<Event>> {
  EventsControllerProvider._({
    required EventsControllerFamily super.from,
    required EventFilter super.argument,
  }) : super(
         retry: null,
         name: r'eventsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventsControllerHash();

  @override
  String toString() {
    return r'eventsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EventsController create() => EventsController();

  @override
  bool operator ==(Object other) {
    return other is EventsControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventsControllerHash() => r'073b06046b527f77fee0648987d92b178c6b31b6';

final class EventsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EventsController,
          AsyncValue<List<Event>>,
          List<Event>,
          FutureOr<List<Event>>,
          EventFilter
        > {
  EventsControllerFamily._()
    : super(
        retry: null,
        name: r'eventsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EventsControllerProvider call(EventFilter filter) =>
      EventsControllerProvider._(argument: filter, from: this);

  @override
  String toString() => r'eventsControllerProvider';
}

abstract class _$EventsController extends $AsyncNotifier<List<Event>> {
  late final _$args = ref.$arg as EventFilter;
  EventFilter get filter => _$args;

  FutureOr<List<Event>> build(EventFilter filter);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Event>>, List<Event>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Event>>, List<Event>>,
              AsyncValue<List<Event>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(eventDetail)
final eventDetailProvider = EventDetailFamily._();

final class EventDetailProvider
    extends $FunctionalProvider<AsyncValue<Event>, Event, FutureOr<Event>>
    with $FutureModifier<Event>, $FutureProvider<Event> {
  EventDetailProvider._({
    required EventDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'eventDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventDetailHash();

  @override
  String toString() {
    return r'eventDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Event> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Event> create(Ref ref) {
    final argument = this.argument as String;
    return eventDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is EventDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventDetailHash() => r'aa0f9df8ffa275aa2f1d94b86ba1c568d9a43d3e';

final class EventDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Event>, String> {
  EventDetailFamily._()
    : super(
        retry: null,
        name: r'eventDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EventDetailProvider call(String eventId) =>
      EventDetailProvider._(argument: eventId, from: this);

  @override
  String toString() => r'eventDetailProvider';
}

@ProviderFor(eventCapacity)
final eventCapacityProvider = EventCapacityFamily._();

final class EventCapacityProvider
    extends
        $FunctionalProvider<
          AsyncValue<EventCapacity>,
          EventCapacity,
          Stream<EventCapacity>
        >
    with $FutureModifier<EventCapacity>, $StreamProvider<EventCapacity> {
  EventCapacityProvider._({
    required EventCapacityFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'eventCapacityProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventCapacityHash();

  @override
  String toString() {
    return r'eventCapacityProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<EventCapacity> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<EventCapacity> create(Ref ref) {
    final argument = this.argument as String;
    return eventCapacity(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is EventCapacityProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventCapacityHash() => r'cce246f89e0153547ed1e2080a5f79818f205f2a';

final class EventCapacityFamily extends $Family
    with $FunctionalFamilyOverride<Stream<EventCapacity>, String> {
  EventCapacityFamily._()
    : super(
        retry: null,
        name: r'eventCapacityProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EventCapacityProvider call(String eventId) =>
      EventCapacityProvider._(argument: eventId, from: this);

  @override
  String toString() => r'eventCapacityProvider';
}

@ProviderFor(EventPresenceController)
final eventPresenceControllerProvider = EventPresenceControllerFamily._();

final class EventPresenceControllerProvider
    extends $NotifierProvider<EventPresenceController, bool> {
  EventPresenceControllerProvider._({
    required EventPresenceControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'eventPresenceControllerProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventPresenceControllerHash();

  @override
  String toString() {
    return r'eventPresenceControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EventPresenceController create() => EventPresenceController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EventPresenceControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventPresenceControllerHash() =>
    r'a5ae143dd663e7b20986182858fe6ab55cce0b06';

final class EventPresenceControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EventPresenceController,
          bool,
          bool,
          bool,
          String
        > {
  EventPresenceControllerFamily._()
    : super(
        retry: null,
        name: r'eventPresenceControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  EventPresenceControllerProvider call(String eventId) =>
      EventPresenceControllerProvider._(argument: eventId, from: this);

  @override
  String toString() => r'eventPresenceControllerProvider';
}

abstract class _$EventPresenceController extends $Notifier<bool> {
  late final _$args = ref.$arg as String;
  String get eventId => _$args;

  bool build(String eventId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
