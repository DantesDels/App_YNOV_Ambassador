import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/errors/error_display.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/core/widgets/app_error_view.dart';
import 'package:campus_pulse/core/widgets/app_primary_button.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/ticketing/domain/pricing_tier.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/presentation/models/group_hold_state.dart';
import 'package:campus_pulse/features/events/presentation/providers/event_providers.dart';
import 'package:campus_pulse/features/events/presentation/widgets/capacity_gauge.dart';
import 'package:campus_pulse/features/social/presentation/widgets/friends_avatar_stack.dart';
import 'package:campus_pulse/features/social/presentation/widgets/cascade_invite_bottom_sheet.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/presentation/providers/ticketing_providers.dart';
import 'package:campus_pulse/features/ticketing/presentation/widgets/checkout_bottom_sheet.dart';
import 'package:campus_pulse/features/ticketing/presentation/widgets/squad_hold_sheet.dart';
import 'package:campus_pulse/features/ticketing/presentation/widgets/squad_hold_timer_widget.dart';

class EventDetailPage extends ConsumerStatefulWidget {
  const EventDetailPage({
    required this.eventId,
    this.referrerId,
    this.openCheckout = false,
    super.key,
  });

  final String eventId;
  final String? referrerId;
  final bool openCheckout;

  @override
  ConsumerState<EventDetailPage> createState() => _EventDetailPageState();
}

class _EventDetailPageState extends ConsumerState<EventDetailPage> {
  bool _checkoutOpened = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.openCheckout) {
        unawaited(_openCheckoutIfNeeded());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Event> eventState =
        ref.watch(eventDetailProvider(widget.eventId));

    return Scaffold(
      body: eventState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object error, StackTrace stackTrace) => AppErrorView(
          message: userMessageOf(error),
          onRetry: () => ref.invalidate(eventDetailProvider(widget.eventId)),
        ),
        data: (Event event) => Scaffold(
          body: _DetailBody(
            event: event,
            eventId: widget.eventId,
            referrerId: widget.referrerId,
            openCheckout: _openCheckout,
            openHold: _openHold,
            openCascade: _openCascade,
          ),
          bottomNavigationBar: _BottomBar(
            event: event,
            onCheckout: () => _openCheckout(event),
          ),
        ),
      ),
    );
  }

  Future<void> _openCheckoutIfNeeded() async {
    if (_checkoutOpened) {
      return;
    }
    _checkoutOpened = true;
    try {
      final Event event = await ref.read(eventDetailProvider(widget.eventId).future);
      if (!mounted) {
        return;
      }
      await _openCheckout(event);
    } catch (_) {
      _checkoutOpened = false;
    }
  }

  Future<void> _openCheckout(Event event) async {
    final Ticket? ticket = await showModalBottomSheet<Ticket>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: AppColors.surface,
      builder: (BuildContext context) => CheckoutBottomSheet(
        event: event,
        referrerId: widget.referrerId,
      ),
    );
    if (!mounted) {
      return;
    }
    if (ticket != null) {
      await showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        backgroundColor: AppColors.surface,
        builder: (BuildContext context) => CascadeInviteBottomSheet(event: event),
      );
    }
  }

  Future<void> _openHold(Event event) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: AppColors.surface,
      builder: (BuildContext context) => SquadHoldSheet(event: event),
    );
  }

  Future<void> _openCascade(Event event) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: AppColors.surface,
      builder: (BuildContext context) => CascadeInviteBottomSheet(event: event),
    );
  }
}

class _DetailBody extends ConsumerWidget {
  const _DetailBody({
    required this.event,
    required this.eventId,
    required this.referrerId,
    required this.openCheckout,
    required this.openHold,
    required this.openCascade,
  });

  final Event event;
  final String eventId;
  final String? referrerId;
  final Future<void> Function(Event event) openCheckout;
  final Future<void> Function(Event event) openHold;
  final Future<void> Function(Event event) openCascade;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EventCapacity capacity =
        ref.watch(eventCapacityProvider(eventId)).value ?? event.capacity;
    final bool presenceVisible =
        ref.watch(eventPresenceControllerProvider(eventId));
    final GroupHoldState holdState =
        ref.watch(groupHoldControllerProvider(eventId));
    final GroupHoldReservation? hold = holdState.reservation;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 310,
          pinned: true,
          stretch: true,
          backgroundColor: AppColors.ink,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: _CircleIconButton(
              icon: Icons.arrow_back_rounded,
              onTap: () => context.pop(),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: _CircleIconButton(
                icon: Icons.share_rounded,
                onTap: () => openCascade(event),
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: _Cover(event: event),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (referrerId != null && referrerId!.isNotEmpty) ...<Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                    decoration: BoxDecoration(
                      color: AppColors.secondary.withValues(alpha: 0.14),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.secondary.withValues(alpha: 0.4),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Icon(
                          Icons.link_rounded,
                          size: 15,
                          color: AppColors.secondary,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Invitation cascade active',
                          style: AppTypography.textTheme.labelMedium?.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                ],
                Row(
                  children: <Widget>[
                    _OrganizerPill(organizer: event.organizer),
                    const SizedBox(width: 8),
                    Text(
                      event.organizerName,
                      style: AppTypography.textTheme.bodySmall,
                    ),
                    const Spacer(),
                    if (event.isTrending)
                      const _TrendingPill(),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  event.title,
                  style: AppTypography.textTheme.displaySmall,
                ),
                const SizedBox(height: 6),
                Text(
                  event.tagline,
                  style: AppTypography.textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 18),
                _InfoCard(
                  children: <Widget>[
                    _InfoLine(
                      icon: Icons.calendar_month_rounded,
                      title: Formatters.fullDate(event.startsAt),
                      subtitle: 'Jusqu’à ${Formatters.time(event.endsAt)}',
                    ),
                    const Divider(),
                    _InfoLine(
                      icon: Icons.place_rounded,
                      title: event.venueName,
                      subtitle: event.address,
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Text(
                  'Disponibilité',
                  style: AppTypography.textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                CapacityGauge(capacity: capacity),
                const SizedBox(height: 18),
                if (event.hasFriendsAttending) ...<Widget>[
                  Text(
                    'Tes potes sur cet événement',
                    style: AppTypography.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  FriendsAvatarStack(
                    attendees: event.friendsAttending,
                    radius: 18,
                    maxVisible: 5,
                    showLabel: true,
                  ),
                  const SizedBox(height: 16),
                ],
                _PresenceCard(
                  isDiscreet: !presenceVisible,
                  isSaving: false,
                  onToggle: () async {
                    final String? error = await ref
                        .read(eventPresenceControllerProvider(eventId).notifier)
                        .toggle();
                    if (error != null && context.mounted) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text(error)));
                    }
                  },
                ),
                const SizedBox(height: 18),
                Text(
                  'Description',
                  style: AppTypography.textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  event.description,
                  style: AppTypography.textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                if (event.tags.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 14),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: event.tags
                        .map(
                          (String tag) => Chip(
                            label: Text('#$tag'),
                            visualDensity: VisualDensity.compact,
                          ),
                        )
                        .toList(growable: false),
                  ),
                ],
                const SizedBox(height: 22),
                Text(
                  'Tarifs (calculés par le serveur)',
                  style: AppTypography.textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                for (final PricingTier tier in event.tiers)
                  _TierRow(tier: tier),
                const SizedBox(height: 22),
                Text(
                  'Escouade',
                  style: AppTypography.textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  'Bloque jusqu’à ${AppConfig.maxHeldSeats} places pendant ${AppConfig.groupHoldDuration.inMinutes} minutes, '
                  'puis partage un lien de paiement à chacun de tes potes.',
                  style: AppTypography.textTheme.bodyMedium,
                ),
                const SizedBox(height: 12),
                if (hold != null)
                  SquadHoldTimerWidget(
                    reservation: hold,
                    onCancel: () async {
                      await ref
                          .read(groupHoldControllerProvider(eventId).notifier)
                          .cancel();
                    },
                    onExpired: () => ref
                        .read(groupHoldControllerProvider(eventId).notifier)
                        .cancel(),
                  )
                else
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: capacity.isSoldOut ? null : () => openHold(event),
                      icon: const Icon(Icons.lock_clock_rounded, size: 19),
                      label: const Text('Bloquer des places pour mes potes'),
                    ),
                  ),
                const SizedBox(height: 110),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.event, required this.onCheckout});

  final Event event;
  final VoidCallback onCheckout;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
          color: AppColors.surface.withValues(alpha: 0.96),
          border: const Border(top: BorderSide(color: AppColors.outline)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    event.isSoldOut ? 'Complet' : 'À partir de',
                    style: AppTypography.textTheme.labelSmall,
                  ),
                  Text(
                    event.isSoldOut
                        ? '—'
                        : (event.pricing.lowestPriceCents == null
                            ? 'Bientôt'
                            : Formatters.price(
                                event.pricing.lowestPriceCents!,
                                event.pricing.currency,
                              )),
                    style: AppTypography.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: AppPrimaryButton(
                label: event.isSoldOut ? 'Complet' : 'Prendre ma place',
                icon: event.isSoldOut ? Icons.block_rounded : Icons.bolt_rounded,
                onPressed: event.isSoldOut ? null : onCheckout,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Cover extends StatelessWidget {
  const _Cover({required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            (event.organizer == OrganizerType.bde ? AppColors.bde : AppColors.bds)
                .withValues(alpha: 0.55),
            AppColors.ink,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.event_rounded,
          size: 96,
          color: Colors.white.withValues(alpha: 0.12),
        ),
      ),
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  const _CircleIconButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withValues(alpha: 0.35),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 38,
          height: 38,
          child: Icon(icon, color: Colors.white, size: 20),
        ),
      ),
    );
  }
}

class _OrganizerPill extends StatelessWidget {
  const _OrganizerPill({required this.organizer});

  final OrganizerType organizer;

  @override
  Widget build(BuildContext context) {
    final Color color = organizer == OrganizerType.bde ? AppColors.bde : AppColors.bds;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.45)),
      ),
      child: Text(
        organizer.label,
        style: AppTypography.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _TrendingPill extends StatelessWidget {
  const _TrendingPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.warning.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.local_fire_department_rounded, size: 14, color: AppColors.warning),
          const SizedBox(width: 4),
          Text(
            'Tendance',
            style: AppTypography.textTheme.labelSmall?.copyWith(color: AppColors.warning),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.outline),
      ),
      child: Column(children: children),
    );
  }
}

class _InfoLine extends StatelessWidget {
  const _InfoLine({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: <Widget>[
          Icon(icon, color: AppColors.primarySoft, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: AppTypography.textTheme.titleSmall),
                if (subtitle.trim().isNotEmpty)
                  Text(subtitle, style: AppTypography.textTheme.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PresenceCard extends StatelessWidget {
  const _PresenceCard({
    required this.isDiscreet,
    required this.onToggle,
    required this.isSaving,
  });

  final bool isDiscreet;
  final Future<void> Function() onToggle;
  final bool isSaving;

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
              Icons.visibility_off_outlined,
              color: AppColors.secondary,
              size: 20,
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
                      ? 'Tes potes ne te voient pas sur cet événement.'
                      : 'Tes potes savent que tu vas y aller.',
                  style: AppTypography.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          if (isSaving)
            const SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          else
            Switch(
              value: isDiscreet,
              onChanged: (_) => onToggle(),
            ),
        ],
      ),
    );
  }
}

class _TierRow extends StatelessWidget {
  const _TierRow({required this.tier});

  final PricingTier tier;

  @override
  Widget build(BuildContext context) {
    final bool soldOut = tier.remainingSeats == 0;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.outline),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      tier.label,
                      style: AppTypography.textTheme.titleSmall,
                    ),
                    if (tier.isEarlyBird) ...<Widget>[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.success.withValues(alpha: 0.16),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Early bird',
                          style: AppTypography.textTheme.labelSmall?.copyWith(
                            color: AppColors.success,
                          ),
                        ),
                      ),
                    ],
                    if (tier.kind == PricingKind.squad) ...<Widget>[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.secondary.withValues(alpha: 0.16),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Groupe',
                          style: AppTypography.textTheme.labelSmall?.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  soldOut
                      ? 'Épuisé'
                      : tier.remainingSeats == null
                          ? 'Places illimitées'
                          : '${tier.remainingSeats} places restantes',
                  style: AppTypography.textTheme.bodySmall?.copyWith(
                    color: soldOut ? AppColors.danger : AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          Text(
            Formatters.price(tier.priceCents, tier.currency),
            style: AppTypography.textTheme.titleMedium?.copyWith(
              color: soldOut ? AppColors.textTertiary : AppColors.textPrimary,
              decoration: soldOut ? TextDecoration.lineThrough : null,
            ),
          ),
        ],
      ),
    );
  }
}
