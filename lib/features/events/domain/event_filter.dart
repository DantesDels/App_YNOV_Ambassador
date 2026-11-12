import 'package:freezed_annotation/freezed_annotation.dart';

import 'event.dart';
import 'organizer_type.dart';

part 'event_filter.freezed.dart';

/// Discoverable event categories. Icons are resolved in the presentation layer
/// so this file stays free of Flutter imports.
enum EventCategory {
  all(label: 'Tout', apiValue: 'all'),
  party(label: 'Soirées', apiValue: 'party'),
  sport(label: 'Sport', apiValue: 'sport'),
  culture(label: 'Culture', apiValue: 'culture'),
  food(label: 'Food', apiValue: 'food'),
  trip(label: 'Voyages', apiValue: 'trip');

  const EventCategory({required this.label, required this.apiValue});

  final String label;
  final String apiValue;

  static EventCategory fromApi(String? value) {
    return EventCategory.values.firstWhere(
      (EventCategory category) => category.apiValue == value?.toLowerCase(),
      orElse: () => EventCategory.all,
    );
  }
}

enum EventSort {
  soonest(label: 'Bientôt'),
  trending(label: 'Tendance'),
  cheapest(label: 'Petit budget');

  const EventSort({required this.label});

  final String label;
}

/// Client-side discover filters. Pricing and availability still come from the
/// backend; this only narrows an already-authoritative list.
@freezed
abstract class EventFilter with _$EventFilter {
  const factory EventFilter({
    @Default(EventCategory.all) EventCategory category,
    OrganizerType? organizer,
    @Default('') String query,
    @Default(false) bool onlyAvailable,
    @Default(EventSort.soonest) EventSort sort,
  }) = _EventFilter;

  const EventFilter._();

  bool get hasActiveFilters =>
      category != EventCategory.all ||
      organizer != null ||
      query.trim().isNotEmpty ||
      onlyAvailable;

  bool matches(Event event) {
    if (category != EventCategory.all && event.category != category) {
      return false;
    }
    if (organizer != null && event.organizer != organizer) {
      return false;
    }
    if (onlyAvailable && event.capacity.isSoldOut) {
      return false;
    }
    final String needle = query.trim().toLowerCase();
    if (needle.isEmpty) {
      return true;
    }
    final String haystack = <String>[
      event.title,
      event.tagline,
      event.venueName,
      event.organizerName,
      ...event.tags,
    ].join(' ').toLowerCase();
    return haystack.contains(needle);
  }

  List<Event> apply(Iterable<Event> events) {
    final List<Event> filtered = events.where(matches).toList(growable: true);
    filtered.sort(_comparator);
    return filtered;
  }

  int Function(Event, Event) get _comparator {
    return switch (sort) {
      EventSort.soonest => (Event a, Event b) => a.startsAt.compareTo(b.startsAt),
      EventSort.trending => (Event a, Event b) {
        final int byRatio = b.capacity.fillRatio.compareTo(a.capacity.fillRatio);
        return byRatio != 0 ? byRatio : a.startsAt.compareTo(b.startsAt);
      },
      EventSort.cheapest => (Event a, Event b) {
        final int aPrice = a.pricing.lowestPriceCents ?? (1 << 30);
        final int bPrice = b.pricing.lowestPriceCents ?? (1 << 30);
        return aPrice.compareTo(bPrice);
      },
    };
  }
}
