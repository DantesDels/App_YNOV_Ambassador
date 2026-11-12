import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';

/// Discover filter row: category, organizer, availability and sort.
class FilterChipsBar extends StatelessWidget {
  const FilterChipsBar({
    required this.filter,
    required this.onCategoryChanged,
    required this.onOrganizerToggled,
    required this.onAvailabilityToggled,
    required this.onSortChanged,
    required this.onReset,
    super.key,
  });

  final EventFilter filter;
  final ValueChanged<EventCategory> onCategoryChanged;
  final ValueChanged<OrganizerType> onOrganizerToggled;
  final VoidCallback onAvailabilityToggled;
  final ValueChanged<EventSort> onSortChanged;
  final VoidCallback onReset;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: <Widget>[
              for (final EventCategory category in EventCategory.values)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    selected: filter.category == category,
                    onSelected: (_) => onCategoryChanged(category),
                    avatar: Icon(
                      _categoryIcon(category),
                      size: 16,
                      color: filter.category == category
                          ? Colors.white
                          : AppColors.textSecondary,
                    ),
                    label: Text(category.label),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: <Widget>[
              for (final OrganizerType organizer in OrganizerType.values)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    selected: filter.organizer == organizer,
                    onSelected: (_) => onOrganizerToggled(organizer),
                    avatar: Icon(
                      Icons.circle,
                      size: 10,
                      color: organizer == OrganizerType.bde
                          ? AppColors.bde
                          : AppColors.bds,
                    ),
                    label: Text(organizer.label),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  selected: filter.onlyAvailable,
                  onSelected: (_) => onAvailabilityToggled(),
                  avatar: Icon(
                    Icons.bolt_rounded,
                    size: 16,
                    color: filter.onlyAvailable
                        ? Colors.white
                        : AppColors.textSecondary,
                  ),
                  label: const Text('Dispo'),
                ),
              ),
              if (filter.hasActiveFilters) ...<Widget>[
                const SizedBox(width: 2),
                TextButton.icon(
                  onPressed: onReset,
                  icon: const Icon(Icons.close_rounded, size: 15),
                  label: const Text('Reset'),
                ),
              ],
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 2, 12, 0),
          child: Row(
            children: <Widget>[
              Text(
                'Tri',
                style: AppTypography.textTheme.labelSmall,
              ),
              const SizedBox(width: 6),
              PopupMenuButton<EventSort>(
                initialValue: filter.sort,
                onSelected: onSortChanged,
                itemBuilder: (BuildContext context) {
                  return EventSort.values.map((EventSort sort) {
                    return PopupMenuItem<EventSort>(
                      value: sort,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            sort == filter.sort
                                ? Icons.radio_button_checked_rounded
                                : Icons.radio_button_unchecked_rounded,
                            size: 18,
                            color: sort == filter.sort
                                ? AppColors.primarySoft
                                : AppColors.textTertiary,
                          ),
                          const SizedBox(width: 10),
                          Text(sort.label),
                        ],
                      ),
                    );
                  }).toList(growable: false);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      filter.sort.label,
                      style: AppTypography.textTheme.labelMedium?.copyWith(
                        color: AppColors.primarySoft,
                      ),
                    ),
                    const Icon(
                      Icons.expand_more_rounded,
                      size: 18,
                      color: AppColors.primarySoft,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  IconData _categoryIcon(EventCategory category) {
    return switch (category) {
      EventCategory.all => Icons.grid_view_rounded,
      EventCategory.party => Icons.nightlife_rounded,
      EventCategory.sport => Icons.sports_basketball_rounded,
      EventCategory.culture => Icons.theater_comedy_rounded,
      EventCategory.food => Icons.restaurant_rounded,
      EventCategory.trip => Icons.landscape_rounded,
    };
  }
}
