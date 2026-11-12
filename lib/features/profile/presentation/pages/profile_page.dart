import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/errors/error_display.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/widgets/app_avatar.dart';
import 'package:campus_pulse/features/auth/presentation/providers/auth_providers.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';
import 'package:campus_pulse/features/profile/presentation/providers/profile_providers.dart';
import 'package:campus_pulse/features/profile/presentation/widgets/membership_toggle_card.dart';
import 'package:campus_pulse/features/profile/presentation/widgets/smart_alert_settings_widget.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<StudentProfile> profileState =
        ref.watch(profileControllerProvider);
    final AsyncValue<List<Membership>> memberships =
        ref.watch(membershipsControllerProvider);
    final AsyncValue<NotificationSettings> settings =
        ref.watch(notificationSettingsControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: profileState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (Object error, StackTrace stackTrace) => Center(
            child: Text(error.toString()),
          ),
          data: (StudentProfile profile) => RefreshIndicator(
            onRefresh: () async {
              await ref.read(profileControllerProvider.notifier).refresh();
              await ref.read(membershipsControllerProvider.notifier).refresh();
              ref.invalidate(notificationSettingsControllerProvider);
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 14, 20, 12),
                    child: _ProfileHeader(profile: profile),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 14),
                    child: _StatsRow(profile: profile),
                  ),
                ),
                if (AppConfig.useMockBackend)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 14),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: AppColors.warning.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: AppColors.warning.withValues(alpha: 0.35),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Icons.science_outlined,
                              size: 18,
                              color: AppColors.warning,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Mode démo : les actions sont simulées localement.',
                                style: AppTypography.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 8),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Adhésions',
                          style: AppTypography.textTheme.titleLarge,
                        ),
                        const Spacer(),
                        Text(
                          memberships.value?.length.toString() ?? '0',
                          style: AppTypography.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
                memberships.when(
                  loading: () => const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
                  error: (Object error, StackTrace stackTrace) =>
                      SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(userMessageOf(error)),
                    ),
                  ),
                  data: (List<Membership> list) => SliverPadding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
                    sliver: SliverList.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Membership membership = list[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: MembershipToggleCard(
                            membership: membership,
                            isSaving: false,
                            onVisibilityChanged: (bool isPublic) async {
                              final String? error = await ref
                                  .read(membershipsControllerProvider.notifier)
                                  .setVisibility(
                                    organizer: membership.organizer,
                                    isPublic: isPublic,
                                  );
                              if (error != null && context.mounted) {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(SnackBar(content: Text(error)));
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 8),
                    child: Text(
                      'Mode discret (RGPD)',
                      style: AppTypography.textTheme.titleLarge,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
                    child: _DiscreetCard(
                      isDiscreet: profile.isDiscreet,
                      onChanged: (bool enabled) async {
                        final String? error = await ref
                            .read(profileControllerProvider.notifier)
                            .setDiscreet(enabled);
                        if (error != null && context.mounted) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(content: Text(error)));
                        }
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 8),
                    child: Text(
                      'Alertes',
                      style: AppTypography.textTheme.titleLarge,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
                    child: settings.when(
                      loading: () => const Center(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      error: (Object error, StackTrace stackTrace) => Text(
                        userMessageOf(error),
                      ),
                      data: (NotificationSettings current) =>
                          SmartAlertSettingsWidget(
                        settings: current,
                        isSaving: false,
                        onChanged: (NotificationSettings next) async {
                          final String? error = await ref
                              .read(notificationSettingsControllerProvider.notifier)
                              .save(next);
                          if (error != null && context.mounted) {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(SnackBar(content: Text(error)));
                          }
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
                    child: OutlinedButton.icon(
                      onPressed: () => _signOut(context, ref),
                      icon: const Icon(Icons.logout_rounded, color: AppColors.danger),
                      label: const Text(
                        'Se déconnecter',
                        style: TextStyle(color: AppColors.danger),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.danger),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _signOut(BuildContext context, WidgetRef ref) async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: const Text('Se déconnecter ?'),
        content: const Text(
          'Tu devras te reconnecter pour accéder à tes billets et à ton cercle.',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Annuler'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: AppColors.danger),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Se déconnecter'),
          ),
        ],
      ),
    );
    if (confirmed != true) {
      return;
    }
    await ref.read(authControllerProvider.notifier).signOut();
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.profile});

  final StudentProfile profile;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AppAvatar(
          firstName: profile.firstName,
          lastName: profile.lastName,
          imageUrl: profile.avatarUrl,
          radius: 34,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                profile.displayName,
                style: AppTypography.textTheme.headlineSmall,
              ),
              const SizedBox(height: 2),
              Text(profile.email, style: AppTypography.textTheme.bodySmall),
              const SizedBox(height: 2),
              Text(
                '${profile.schoolName} · ${profile.campus}',
                style: AppTypography.textTheme.bodySmall,
              ),
              if (profile.bio.isNotEmpty) ...<Widget>[
                const SizedBox(height: 6),
                Text(
                  profile.bio,
                  style: AppTypography.textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _StatsRow extends StatelessWidget {
  const _StatsRow({required this.profile});

  final StudentProfile profile;

  @override
  Widget build(BuildContext context) {
    final ProfileStats stats = profile.stats;
    return Row(
      children: <Widget>[
        _StatCard(label: 'Billets', value: stats.ticketsCount.toString()),
        const SizedBox(width: 10),
        _StatCard(label: 'Événements', value: stats.eventsAttended.toString()),
        const SizedBox(width: 10),
        _StatCard(label: 'Potes', value: stats.friendsCount.toString()),
        const SizedBox(width: 10),
        _StatCard(label: 'Escouades', value: stats.squadsJoined.toString()),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: AppColors.surfaceElevated,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.outline),
        ),
        child: Column(
          children: <Widget>[
            Text(
              value,
              style: AppTypography.textTheme.titleLarge,
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: AppTypography.textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}

class _DiscreetCard extends StatelessWidget {
  const _DiscreetCard({
    required this.isDiscreet,
    required this.onChanged,
  });

  final bool isDiscreet;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.outline),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.secondary.withValues(alpha: 0.14),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.visibility_off_rounded,
              color: AppColors.secondary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Mode discret',
                  style: AppTypography.textTheme.titleMedium,
                ),
                Text(
                  isDiscreet
                      ? 'Tu n’apparais sur aucun événement ni dans aucun flux.'
                      : 'Tes potes peuvent voir ta présence aux événements.',
                  style: AppTypography.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Switch(
            value: isDiscreet,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
