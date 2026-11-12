import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/core/widgets/app_primary_button.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/presentation/models/group_hold_state.dart';
import 'package:campus_pulse/features/ticketing/presentation/providers/ticketing_providers.dart';
import 'squad_hold_timer_widget.dart';

/// Creates an atomic 15-minute hold for up to three friends.
class SquadHoldSheet extends ConsumerStatefulWidget {
  const SquadHoldSheet({required this.event, super.key});

  final Event event;

  @override
  ConsumerState<SquadHoldSheet> createState() => _SquadHoldSheetState();
}

class _SquadHoldSheetState extends ConsumerState<SquadHoldSheet> {
  late int _seats = _initialSeats;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(groupHoldControllerProvider(widget.event.id).notifier).setSeats(_seats);
    });
  }

  int get _initialSeats {
    final int available = widget.event.capacity.remainingSeats;
    if (available <= 0) {
      return 1;
    }
    return available < AppConfig.maxHeldSeats ? available : AppConfig.maxHeldSeats;
  }

  @override
  Widget build(BuildContext context) {
    final GroupHoldState state =
        ref.watch(groupHoldControllerProvider(widget.event.id));
    final GroupHoldReservation? reservation = state.reservation;

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
                Expanded(
                  child: Text(
                    reservation == null ? 'Bloque des places' : 'Ton blocage est actif',
                    style: AppTypography.textTheme.titleLarge,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
            const SizedBox(height: 4),
            if (reservation != null) ...<Widget>[
              SquadHoldTimerWidget(
                reservation: reservation,
                onCancel: () async {
                  await ref
                      .read(groupHoldControllerProvider(widget.event.id).notifier)
                      .cancel();
                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }
                },
                onExpired: () => ref
                    .read(groupHoldControllerProvider(widget.event.id).notifier)
                    .cancel(),
              ),
              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Fermer'),
                ),
              ),
            ] else ...<Widget>[
              Text(
                'Réserve atomiquement des places pendant ${AppConfig.groupHoldDuration.inMinutes} minutes, '
                'puis partage un lien de paiement à chaque pote.',
                style: AppTypography.textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surfaceElevated,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.outline),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Places à bloquer',
                            style: AppTypography.textTheme.labelMedium,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Max ${AppConfig.maxHeldSeats} places par blocage',
                            style: AppTypography.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    IconButton.filledTonal(
                      onPressed: _seats > 1 ? () => _setSeats(_seats - 1) : null,
                      icon: const Icon(Icons.remove_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        '$_seats',
                        style: AppTypography.textTheme.headlineSmall,
                      ),
                    ),
                    IconButton.filledTonal(
                      onPressed: _seats < AppConfig.maxHeldSeats &&
                              _seats < widget.event.capacity.remainingSeats
                          ? () => _setSeats(_seats + 1)
                          : null,
                      icon: const Icon(Icons.add_rounded),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Text(
                'Montant indicatif : ${Formatters.price(_unitAmount, widget.event.pricing.currency)} / place. '
                'Le prix final de chaque place est calculé par le serveur au paiement.',
                style: AppTypography.textTheme.bodySmall,
              ),
              if (state.errorMessage != null) ...<Widget>[
                const SizedBox(height: 12),
                Text(
                  state.errorMessage!,
                  style: AppTypography.textTheme.bodySmall?.copyWith(
                    color: AppColors.danger,
                  ),
                ),
              ],
              const SizedBox(height: 20),
              AppPrimaryButton(
                label: 'Bloquer $_seats place${_seats > 1 ? 's' : ''}',
                icon: Icons.lock_clock_rounded,
                isLoading: state.isSubmitting,
                onPressed: widget.event.capacity.isSoldOut ? null : _start,
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Icon(
                    Icons.info_outline_rounded,
                    size: 15,
                    color: AppColors.textTertiary,
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                    child: Text(
                      'Les places bloquées comptent comme prises pour tout le monde. '
                      'Elles sont libérées automatiquement à la fin du compte à rebours.',
                      style: AppTypography.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  int get _unitAmount => widget.event.pricing.standardTier?.priceCents ?? 0;

  void _setSeats(int seats) {
    setState(() => _seats = seats);
    ref.read(groupHoldControllerProvider(widget.event.id).notifier).setSeats(seats);
  }

  Future<void> _start() async {
    ref.read(groupHoldControllerProvider(widget.event.id).notifier).setSeats(_seats);
    await ref.read(groupHoldControllerProvider(widget.event.id).notifier).start();
  }
}
