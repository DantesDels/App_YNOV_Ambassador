
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/errors/error_display.dart';
import 'package:campus_pulse/core/widgets/app_empty_state.dart';
import 'package:campus_pulse/core/widgets/app_error_view.dart';
import 'package:campus_pulse/features/auth/presentation/providers/auth_providers.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/events/presentation/providers/event_providers.dart';
import 'package:campus_pulse/features/events/presentation/widgets/event_card.dart';
import 'package:campus_pulse/features/events/presentation/widgets/filter_chips_bar.dart';
import 'package:campus_pulse/features/social/presentation/widgets/live_activity_banner.dart';

class DiscoverPage extends ConsumerStatefulWidget {
  const DiscoverPage({super.key});

  @override
  ConsumerState<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends ConsumerState<DiscoverPage> {
  final TextEditingController _searchController = TextEditingController();
  bool _syncingSearch = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final EventFilter filter = ref.watch(eventsFilterControllerProvider);
    final AsyncValue<List<Event>> events =
        ref.watch(eventsControllerProvider(filter));
    final session = ref.watch(currentSessionProvider);

    ref.listen<EventFilter>(eventsFilterControllerProvider, (EventFilter? prev, EventFilter next) {
      if (_syncingSearch) {
        return;
      }
      if (_searchController.text != next.query) {
        _syncingSearch = true;
        _searchController.text = next.query;
        _searchController.selection = TextSelection.collapsed(offset: next.query.length);
        _syncingSearch = false;
      }
    });

    final String firstName = session?.firstName ?? 'Étudiant';

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(eventsControllerProvider(filter).notifier).refresh();
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Salut $firstName 👋',
                                  style: AppTypography.textTheme.headlineSmall,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Ce soir, demain, ce week-end : les plans du campus.',
                                  style: AppTypography.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          if (AppConfig.useMockBackend)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.warning.withValues(alpha: 0.16),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Démo',
                                style: AppTypography.textTheme.labelSmall?.copyWith(
                                  color: AppColors.warning,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _searchController,
                        onChanged: (String value) {
                          if (_syncingSearch) {
                            return;
                          }
                          ref.read(eventsFilterControllerProvider.notifier).setQuery(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Rechercher un lieu, un thème, une orga…',
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: AppColors.textTertiary,
                          ),
                          suffixIcon: _searchController.text.isEmpty
                              ? null
                              : IconButton(
                                  onPressed: () {
                                    _searchController.clear();
                                    ref.read(eventsFilterControllerProvider.notifier).setQuery('');
                                  },
                                  icon: const Icon(Icons.close_rounded),
                                ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      LiveActivityBanner(
                        margin: const EdgeInsets.only(bottom: 10),
                        onEventTap: (String eventId) {
                          context.push(AppRoutes.eventDetail(eventId));
                        },
                      ),
                      FilterChipsBar(
                        filter: filter,
                        onCategoryChanged: (EventCategory category) => ref
                            .read(eventsFilterControllerProvider.notifier)
                            .setCategory(category),
                        onOrganizerToggled: (OrganizerType organizer) => ref
                            .read(eventsFilterControllerProvider.notifier)
                            .toggleOrganizer(organizer),
                        onAvailabilityToggled: () => ref
                            .read(eventsFilterControllerProvider.notifier)
                            .toggleOnlyAvailable(),
                        onSortChanged: (EventSort sort) => ref
                            .read(eventsFilterControllerProvider.notifier)
                            .setSort(sort),
                        onReset: () => ref
                            .read(eventsFilterControllerProvider.notifier)
                            .reset(),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: <Widget>[
                          Text(
                            'Événements',
                            style: AppTypography.textTheme.titleLarge,
                          ),
                          const Spacer(),
                          Text(
                            '${events.value?.length ?? 0} plan${events.value?.length == 1 ? '' : 's'}',
                            style: AppTypography.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            events.when(
              loading: () => const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (Object error, StackTrace stackTrace) => SliverFillRemaining(
                hasScrollBody: false,
                child: AppErrorView(
                  message: userMessageOf(error),
                  onRetry: () => ref.invalidate(eventsControllerProvider(filter)),
                ),
              ),
              data: (List<Event> list) {
                final List<Event> filtered = filter.apply(list);
                if (filtered.isEmpty) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: AppEmptyState(
                      title: 'Aucun plan trouvé',
                      message: 'Modifie tes filtres ou reviens plus tard.',
                      actionLabel: 'Réinitialiser',
                      onAction: () => ref
                          .read(eventsFilterControllerProvider.notifier)
                          .reset(),
                    ),
                  );
                }
                return SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
                  sliver: SliverList.builder(
                    itemCount: filtered.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Event event = filtered[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: EventCard(
                          event: event,
                          onTap: () => context.push(AppRoutes.eventDetail(event.id)),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
