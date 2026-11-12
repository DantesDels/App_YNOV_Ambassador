import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:campus_pulse/core/errors/error_display.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/widgets/app_primary_button.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/presentation/providers/social_providers.dart';

/// Post-purchase modal that turns a buyer into a cascade referrer.
class CascadeInviteBottomSheet extends ConsumerStatefulWidget {
  const CascadeInviteBottomSheet({required this.event, super.key});

  final Event event;

  @override
  ConsumerState<CascadeInviteBottomSheet> createState() =>
      _CascadeInviteBottomSheetState();
}

class _CascadeInviteBottomSheetState
    extends ConsumerState<CascadeInviteBottomSheet> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref
            .read(cascadeInviteControllerProvider(widget.event.id).notifier)
            .load(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<CascadeInvite?> inviteState =
        ref.watch(cascadeInviteControllerProvider(widget.event.id));
    final AsyncValue<List<Friend>> notifyState =
        ref.watch(notifyFriendsControllerProvider(widget.event.id));

    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 4,
        bottom: MediaQuery.viewInsetsOf(context).bottom + 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    gradient: AppColors.primaryGradient,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(
                    Icons.diversity_3_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Forme ton escouade',
                        style: AppTypography.textTheme.titleLarge,
                      ),
                      Text(
                        widget.event.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
            const SizedBox(height: 18),
            inviteState.when(
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 38),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (Object error, StackTrace stackTrace) => _ErrorCard(
                message: userMessageOf(error),
                onRetry: () => unawaited(
                  ref
                      .read(
                        cascadeInviteControllerProvider(widget.event.id).notifier,
                      )
                      .load(),
                ),
              ),
              data: (CascadeInvite? invite) {
                if (invite == null) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                return _InviteContent(
                  invite: invite,
                  isNotifying: notifyState.isLoading,
                  onShare: () => _share(invite),
                  onCopy: () => _copy(invite),
                  onNotify: () => _notify(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _share(CascadeInvite invite) async {
    final Result<void> result = await ref
        .read(cascadeInviteControllerProvider(widget.event.id).notifier)
        .share(invite);
    if (!mounted) {
      return;
    }
    result.fold(
      onSuccess: (_) {},
      onFailure: (failure) => _showMessage(failure.userMessage),
    );
  }

  Future<void> _copy(CascadeInvite invite) async {
    await Clipboard.setData(
      ClipboardData(text: '${invite.shareMessage}\n\n${invite.shareUrl}'),
    );
    if (mounted) {
      _showMessage('Lien d’invitation copié.');
    }
  }

  Future<void> _notify() async {
    final int notified = await ref
        .read(notifyFriendsControllerProvider(widget.event.id).notifier)
        .notify(widget.event);
    if (!mounted) {
      return;
    }
    if (notified > 0) {
      _showMessage('$notified pote${notified > 1 ? 's' : ''} notifié${notified > 1 ? 's' : ''}.');
    } else {
      _showMessage('Impossible de notifier tes potes pour le moment.');
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}

class _InviteContent extends StatelessWidget {
  const _InviteContent({
    required this.invite,
    required this.isNotifying,
    required this.onShare,
    required this.onCopy,
    required this.onNotify,
  });

  final CascadeInvite invite;
  final bool isNotifying;
  final VoidCallback onShare;
  final VoidCallback onCopy;
  final VoidCallback onNotify;

  @override
  Widget build(BuildContext context) {
    final double progress =
        (invite.invitedCount / invite.squadSeats).clamp(0, 1).toDouble();
    final bool squadComplete = invite.isSquadComplete || invite.squadDiscountUnlocked;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                AppColors.primary.withValues(alpha: 0.2),
                AppColors.surfaceElevated,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: AppColors.primary.withValues(alpha: 0.35)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      squadComplete ? 'Escouade complète' : 'Plus on est, moins on paie',
                      style: AppTypography.textTheme.titleMedium,
                    ),
                  ),
                  if (invite.discountLabel != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.bds.withValues(alpha: 0.18),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        invite.discountLabel!,
                        style: AppTypography.textTheme.labelMedium?.copyWith(
                          color: AppColors.bds,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                squadComplete
                    ? 'Le tarif escouade est débloqué pour ce groupe.'
                    : 'Invite ${invite.squadSeats - invite.invitedCount} pote${invite.squadSeats - invite.invitedCount > 1 ? 's' : ''} pour débloquer le tarif de groupe.',
                style: AppTypography.textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,
                  backgroundColor: AppColors.surfaceMuted,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${invite.invitedCount} / ${invite.squadSeats} potes invités',
                style: AppTypography.textTheme.labelSmall,
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        AppPrimaryButton(
          label: 'Partager l’invitation',
          icon: Icons.ios_share_rounded,
          onPressed: onShare,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: onCopy,
            icon: const Icon(Icons.link_rounded, size: 19),
            label: const Text('Copier le lien'),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: double.infinity,
          child: TextButton.icon(
            onPressed: isNotifying ? null : onNotify,
            icon: isNotifying
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.notifications_active_outlined, size: 19),
            label: const Text('Notifier mes potes'),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: <Widget>[
            const Icon(
              Icons.lock_outline_rounded,
              size: 14,
              color: AppColors.textTertiary,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                'Chaque invitation est signée et attribuée côté serveur.',
                style: AppTypography.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ErrorCard extends StatelessWidget {
  const _ErrorCard({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.danger.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.danger.withValues(alpha: 0.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message, style: AppTypography.textTheme.bodyMedium),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh_rounded, size: 18),
            label: const Text('Réessayer'),
          ),
        ],
      ),
    );
  }
}
