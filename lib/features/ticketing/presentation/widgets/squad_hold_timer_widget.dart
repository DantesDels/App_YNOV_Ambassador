import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';

/// Countdown for the backend-issued 15-minute seat hold.
class SquadHoldTimerWidget extends StatefulWidget {
  const SquadHoldTimerWidget({
    required this.reservation,
    this.onExpired,
    this.onCancel,
    super.key,
  });

  final GroupHoldReservation reservation;
  final VoidCallback? onExpired;
  final VoidCallback? onCancel;

  @override
  State<SquadHoldTimerWidget> createState() => _SquadHoldTimerWidgetState();
}

class _SquadHoldTimerWidgetState extends State<SquadHoldTimerWidget> {
  Timer? _ticker;
  late Duration _remaining;

  @override
  void initState() {
    super.initState();
    _remaining = widget.reservation.remaining;
    _startTicker();
  }

  @override
  void didUpdateWidget(covariant SquadHoldTimerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.reservation.id != widget.reservation.id) {
      _ticker?.cancel();
      _remaining = widget.reservation.remaining;
      _startTicker();
    }
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool expired = _remaining == Duration.zero;
    final GroupHoldReservation reservation = widget.reservation;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: expired
              ? AppColors.danger.withValues(alpha: 0.5)
              : AppColors.primary.withValues(alpha: 0.45),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                expired ? Icons.timer_off_rounded : Icons.timer_rounded,
                color: expired ? AppColors.danger : AppColors.primarySoft,
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  expired ? 'Ton blocage a expiré' : 'Places bloquées pour ton groupe',
                  style: AppTypography.textTheme.titleMedium,
                ),
              ),
              if (!expired)
                Text(
                  Formatters.countdown(_remaining),
                  style: AppTypography.textTheme.headlineSmall?.copyWith(
                    color: _remaining.inMinutes < 3
                        ? AppColors.warning
                        : AppColors.primarySoft,
                    fontFeatures: const <FontFeature>[
                      FontFeature.tabularFigures(),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            expired
                ? 'Les places ont été remises en vente. Relance un blocage si besoin.'
                : '${reservation.seats} place${reservation.seats > 1 ? 's' : ''} réservée${reservation.seats > 1 ? 's' : ''} · '
                    '${Formatters.price(reservation.unitAmountCents, reservation.currency)} / place',
            style: AppTypography.textTheme.bodySmall,
          ),
          if (!expired) ...<Widget>[
            const SizedBox(height: 12),
            for (final HoldPaymentLink link in reservation.paymentLinks)
              _PaymentLinkRow(link: link),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                if (widget.onCancel != null)
                  TextButton.icon(
                    onPressed: widget.onCancel,
                    icon: const Icon(Icons.link_off_rounded, size: 17),
                    label: const Text('Libérer les places'),
                  ),
                const Spacer(),
                const Icon(
                  Icons.lock_outline_rounded,
                  size: 14,
                  color: AppColors.textTertiary,
                ),
                const SizedBox(width: 5),
                Text(
                  'Blocage serveur',
                  style: AppTypography.textTheme.labelSmall,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  void _startTicker() {
    if (_remaining == Duration.zero) {
      WidgetsBinding.instance.addPostFrameCallback((_) => widget.onExpired?.call());
      return;
    }
    _ticker = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      final Duration next = widget.reservation.expiresAt.difference(DateTime.now());
      setState(() {
        _remaining = next.isNegative ? Duration.zero : next;
      });
      if (_remaining == Duration.zero) {
        timer.cancel();
        widget.onExpired?.call();
      }
    });
  }
}

class _PaymentLinkRow extends StatelessWidget {
  const _PaymentLinkRow({required this.link});

  final HoldPaymentLink link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: <Widget>[
          Icon(
            link.isClaimed
                ? Icons.check_circle_rounded
                : Icons.person_outline_rounded,
            size: 16,
            color: link.isClaimed ? AppColors.success : AppColors.textTertiary,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              link.isClaimed ? '${link.label} · a payé' : link.label,
              style: AppTypography.textTheme.bodySmall?.copyWith(
                color: link.isClaimed ? AppColors.success : AppColors.textSecondary,
              ),
            ),
          ),
          IconButton(
            visualDensity: VisualDensity.compact,
            tooltip: 'Copier le lien de paiement',
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: link.url));
              if (context.mounted) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text('Lien de ${link.label} copié.')),
                  );
              }
            },
            icon: const Icon(Icons.copy_rounded, size: 16),
          ),
        ],
      ),
    );
  }
}
