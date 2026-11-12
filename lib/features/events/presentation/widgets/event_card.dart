import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/features/social/presentation/widgets/friends_avatar_stack.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'capacity_gauge.dart';

/// Discover feed card. Prices and capacity are displayed exactly as the server
/// returns them.
class EventCard extends StatelessWidget {
  const EventCard({
    required this.event,
    required this.onTap,
    super.key,
  });

  final Event event;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.75,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  _Cover(event: event),
                  Positioned(
                    top: 12,
                    left: 12,
                    right: 12,
                    child: Row(
                      children: <Widget>[
                        _OrganizerBadge(organizer: event.organizer),
                        if (event.isTrending) ...<Widget>[
                          const SizedBox(width: 8),
                          const _TrendingBadge(),
                        ],
                        const Spacer(),
                        _PriceBadge(event: event),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 12,
                    bottom: 12,
                    child: _DateBadge(date: event.startsAt),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    event.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    event.tagline,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.place_outlined,
                        size: 15,
                        color: AppColors.textTertiary,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          event.venueName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTypography.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        _categoryLabel(event.category),
                        style: AppTypography.textTheme.labelSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  CapacityGauge(
                    capacity: event.capacity,
                    compact: true,
                  ),
                  if (event.hasFriendsAttending) ...<Widget>[
                    const SizedBox(height: 12),
                    FriendsAvatarStack(
                      attendees: event.friendsAttending,
                      radius: 13,
                      maxVisible: 3,
                      showLabel: true,
                      borderColor: AppColors.surface,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _categoryLabel(EventCategory category) {
    return switch (category) {
      EventCategory.all => 'Campus',
      EventCategory.party => 'Soirée',
      EventCategory.sport => 'Sport',
      EventCategory.culture => 'Culture',
      EventCategory.food => 'Food',
      EventCategory.trip => 'Voyage',
    };
  }
}

class _Cover extends StatelessWidget {
  const _Cover({required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    final String? coverUrl = event.coverUrl;
    final LinearGradient gradient = event.organizer == OrganizerType.bde
        ? AppColors.bdeGradient
        : AppColors.bdsGradient;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        if (coverUrl != null && coverUrl.isNotEmpty)
          Image.network(
            coverUrl,
            fit: BoxFit.cover,
            errorBuilder: (BuildContext context, Object error, StackTrace? stack) {
              return _FallbackCover(gradient: gradient, event: event);
            },
          )
        else
          _FallbackCover(gradient: gradient, event: event),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0x99000000), Colors.transparent, Color(0xCC000000)],
              stops: <double>[0, 0.45, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}

class _FallbackCover extends StatelessWidget {
  const _FallbackCover({required this.gradient, required this.event});

  final LinearGradient gradient;
  final Event event;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            gradient.colors.first.withValues(alpha: 0.55),
            AppColors.surface,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Icon(
          _iconForCategory(event.category),
          size: 62,
          color: Colors.white.withValues(alpha: 0.14),
        ),
      ),
    );
  }

  IconData _iconForCategory(EventCategory category) {
    return switch (category) {
      EventCategory.all => Icons.bolt_rounded,
      EventCategory.party => Icons.nightlife_rounded,
      EventCategory.sport => Icons.sports_basketball_rounded,
      EventCategory.culture => Icons.theater_comedy_rounded,
      EventCategory.food => Icons.restaurant_rounded,
      EventCategory.trip => Icons.landscape_rounded,
    };
  }
}

class _OrganizerBadge extends StatelessWidget {
  const _OrganizerBadge({required this.organizer});

  final OrganizerType organizer;

  @override
  Widget build(BuildContext context) {
    final Color color = organizer == OrganizerType.bde
        ? AppColors.bde
        : AppColors.bds;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Text(
        organizer.label,
        style: AppTypography.textTheme.labelSmall?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}

class _TrendingBadge extends StatelessWidget {
  const _TrendingBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: Colors.white.withValues(alpha: 0.22)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.local_fire_department_rounded,
            size: 13,
            color: AppColors.warning,
          ),
          const SizedBox(width: 4),
          Text(
            'Tendance',
            style: AppTypography.textTheme.labelSmall?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceBadge extends StatelessWidget {
  const _PriceBadge({required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    final int? lowest = event.pricing.lowestPriceCents;
    final String label = event.isSoldOut
        ? 'Complet'
        : lowest == null
            ? 'Bientôt'
            : 'dès ${Formatters.price(lowest, event.pricing.currency)}';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: Colors.white.withValues(alpha: 0.22)),
      ),
      child: Text(
        label,
        style: AppTypography.textTheme.labelSmall?.copyWith(
          color: event.isSoldOut ? AppColors.danger : Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _DateBadge extends StatelessWidget {
  const _DateBadge({required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.schedule_rounded,
            size: 13,
            color: Colors.white70,
          ),
          const SizedBox(width: 5),
          Text(
            '${Formatters.shortDate(date)} · ${Formatters.time(date)}',
            style: AppTypography.textTheme.labelSmall?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
