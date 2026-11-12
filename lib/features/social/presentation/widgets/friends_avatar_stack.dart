import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/core/widgets/app_avatar.dart';
import 'package:campus_pulse/features/events/domain/event_attendee.dart';

/// Overlapping avatar pile that renders the "tes potes y vont" social proof.
class FriendsAvatarStack extends StatelessWidget {
  const FriendsAvatarStack({
    required this.attendees,
    this.maxVisible = 4,
    this.radius = 17,
    this.showLabel = false,
    this.borderColor = AppColors.surface,
    super.key,
  });

  final List<EventAttendee> attendees;
  final int maxVisible;
  final double radius;
  final bool showLabel;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    if (attendees.isEmpty) {
      return const SizedBox.shrink();
    }

    final List<EventAttendee> visible = attendees
        .take(maxVisible)
        .toList(growable: false);
    final int hiddenCount = attendees.length - visible.length;
    final double step = radius * 1.18;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          width: radius * 2 + step * (visible.length - 1) + (hiddenCount > 0 ? step : 0),
          height: radius * 2 + 6,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              for (int index = 0; index < visible.length; index++)
                Positioned(
                  left: index * step,
                  top: 0,
                  child: AppAvatar(
                    firstName: visible[index].firstName,
                    lastName: visible[index].lastName,
                    imageUrl: visible[index].avatarUrl,
                    radius: radius,
                    borderColor: borderColor,
                  ),
                ),
              if (hiddenCount > 0)
                Positioned(
                  left: visible.length * step,
                  top: 0,
                  child: Container(
                    width: radius * 2,
                    height: radius * 2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.surfaceMuted,
                      shape: BoxShape.circle,
                      border: Border.all(color: borderColor, width: 2),
                    ),
                    child: Text(
                      '+$hiddenCount',
                      style: AppTypography.textTheme.labelSmall?.copyWith(
                        color: AppColors.textPrimary,
                        fontSize: radius * 0.55,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (showLabel) ...<Widget>[
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              _label(visible, hiddenCount),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ],
    );
  }

  String _label(List<EventAttendee> visible, int hiddenCount) {
    final List<String> names = visible
        .map((EventAttendee attendee) => Formatters.firstNameOnly(attendee.firstName))
        .toList(growable: false);
    if (hiddenCount > 0) {
      return '${names.join(', ')} et $hiddenCount autre${hiddenCount > 1 ? 's' : ''} y vont';
    }
    if (names.length == 1) {
      return '${names.first} y va';
    }
    return '${names.join(', ')} y vont';
  }
}
