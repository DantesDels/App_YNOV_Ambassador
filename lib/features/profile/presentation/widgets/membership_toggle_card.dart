import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';

/// BDE/BDS membership card with an opt-in visibility switch.
class MembershipToggleCard extends StatelessWidget {
  const MembershipToggleCard({
    required this.membership,
    required this.onVisibilityChanged,
    this.isSaving = false,
    super.key,
  });

  final Membership membership;
  final ValueChanged<bool> onVisibilityChanged;
  final bool isSaving;

  @override
  Widget build(BuildContext context) {
    final Color accent = membership.organizer == OrganizerType.bde
        ? AppColors.bde
        : AppColors.bds;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  accent.withValues(alpha: 0.22),
                  AppColors.surfaceElevated,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    membership.organizer == OrganizerType.bde
                        ? Icons.groups_rounded
                        : Icons.sports_soccer_rounded,
                    color: accent,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        membership.label,
                        style: AppTypography.textTheme.titleMedium,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        membership.statusLabel,
                        style: AppTypography.textTheme.bodySmall?.copyWith(
                          color: membership.isActive ? accent : AppColors.textTertiary,
                        ),
                      ),
                    ],
                  ),
                ),
                if (membership.memberNumber != null)
                  Text(
                    membership.memberNumber!,
                    style: AppTypography.textTheme.labelSmall,
                  ),
              ],
            ),
          ),
          if (membership.perks.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 14, 18, 0),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: membership.perks
                    .map(
                      (String perk) => Chip(
                        label: Text(perk),
                        visualDensity: VisualDensity.compact,
                      ),
                    )
                    .toList(growable: false),
              ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 6, 12, 6),
            child: SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              title: const Text('Visible sur mon profil'),
              subtitle: Text(
                membership.isPublic
                    ? 'Tes potes voient ton adhésion.'
                    : 'Adhésion gardée privée.',
                style: AppTypography.textTheme.bodySmall,
              ),
              value: membership.isPublic,
              onChanged: isSaving ? null : onVisibilityChanged,
            ),
          ),
        ],
      ),
    );
  }
}
