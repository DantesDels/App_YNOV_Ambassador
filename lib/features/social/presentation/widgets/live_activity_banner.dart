import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:campus_pulse/core/errors/error_display.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/presentation/providers/social_providers.dart';

/// Live social ticker shown on the discover feed.
class LiveActivityBanner extends ConsumerWidget {
  const LiveActivityBanner({
    this.onEventTap,
    this.margin = EdgeInsets.zero,
    super.key,
  });

  final ValueChanged<String>? onEventTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ActivityItem> activity = ref.watch(activityFeedProvider);

    return Padding(
      padding: margin,
      child: activity.when(
        loading: () => const _BannerShell(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Le campus s’active…',
                  style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        error: (Object error, StackTrace stackTrace) => _BannerShell(
          child: Row(
            children: <Widget>[
              const Icon(Icons.wifi_off_rounded, size: 16, color: AppColors.textTertiary),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  userMessageOf(error),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: AppColors.textTertiary, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        data: (ActivityItem item) {
          return GestureDetector(
            onTap: onEventTap == null ? null : () => onEventTap!(item.eventId),
            child: _BannerShell(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.35),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: Row(
                  key: ValueKey<String>(item.id),
                  children: <Widget>[
                    _LiveDot(isFriendActivity: item.isFriendActivity),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            item.headline,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.textTheme.titleSmall,
                          ),
                          const SizedBox(height: 1),
                          Text(
                            item.socialProof,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    if (onEventTap != null)
                      const Icon(
                        Icons.chevron_right_rounded,
                        size: 20,
                        color: AppColors.textTertiary,
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BannerShell extends StatelessWidget {
  const _BannerShell({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
      decoration: BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.outline),
      ),
      child: child,
    );
  }
}

class _LiveDot extends StatefulWidget {
  const _LiveDot({required this.isFriendActivity});

  final bool isFriendActivity;

  @override
  State<_LiveDot> createState() => _LiveDotState();
}

class _LiveDotState extends State<_LiveDot> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color = widget.isFriendActivity ? AppColors.secondary : AppColors.bds;
    return FadeTransition(
      opacity: Tween<double>(begin: 0.45, end: 1).animate(_controller),
      child: Container(
        width: 9,
        height: 9,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(color: color.withValues(alpha: 0.5), blurRadius: 8),
          ],
        ),
      ),
    );
  }
}
