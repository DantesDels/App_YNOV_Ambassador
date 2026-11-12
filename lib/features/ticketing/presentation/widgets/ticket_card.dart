import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';

/// Wallet ticket summary. The QR itself is only rendered on the secure
/// full-screen page.
class TicketCard extends StatelessWidget {
  const TicketCard({
    required this.ticket,
    required this.onOpenQr,
    this.onAddToWallet,
    super.key,
  });

  final Ticket ticket;
  final VoidCallback onOpenQr;
  final VoidCallback? onAddToWallet;

  @override
  Widget build(BuildContext context) {
    final bool isPast = !ticket.isUpcoming || ticket.status != TicketStatus.valid;
    final Color accent = ticket.organizer.isBde ? AppColors.bde : AppColors.bds;

    return Opacity(
      opacity: isPast ? 0.62 : 1,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onOpenQr,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(width: 5, color: accent),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: accent.withValues(alpha: 0.16),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              ticket.organizer.label,
                              style: AppTypography.textTheme.labelSmall?.copyWith(
                                color: accent,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          _StatusChip(status: ticket.status),
                          const Spacer(),
                          Text(
                            ticket.shortCode,
                            style: AppTypography.textTheme.labelSmall?.copyWith(
                              color: AppColors.textSecondary,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        ticket.eventTitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.textTheme.titleLarge,
                      ),
                      const SizedBox(height: 6),
                      _InfoRow(
                        icon: Icons.calendar_month_outlined,
                        text: Formatters.fullDate(ticket.eventStartsAt),
                      ),
                      const SizedBox(height: 3),
                      _InfoRow(
                        icon: Icons.place_outlined,
                        text: ticket.venueName,
                      ),
                      if (ticket.seatLabel != null) ...<Widget>[
                        const SizedBox(height: 3),
                        _InfoRow(
                          icon: Icons.event_seat_outlined,
                          text: ticket.seatLabel!,
                        ),
                      ],
                      const SizedBox(height: 12),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: onOpenQr,
                              icon: const Icon(Icons.qr_code_2_rounded, size: 18),
                              label: const Text('Afficher le QR'),
                            ),
                          ),
                          if (onAddToWallet != null) ...<Widget>[
                            const SizedBox(width: 8),
                            IconButton(
                              onPressed: onAddToWallet,
                              tooltip: 'Ajouter au wallet',
                              icon: const Icon(
                                Icons.account_balance_wallet_outlined,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final TicketStatus status;

  @override
  Widget build(BuildContext context) {
    final (String label, Color color) = switch (status) {
      TicketStatus.valid => ('Valide', AppColors.success),
      TicketStatus.used => ('Utilisé', AppColors.textTertiary),
      TicketStatus.expired => ('Expiré', AppColors.warning),
      TicketStatus.refunded => ('Remboursé', AppColors.danger),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: AppTypography.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon, size: 14, color: AppColors.textTertiary),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
