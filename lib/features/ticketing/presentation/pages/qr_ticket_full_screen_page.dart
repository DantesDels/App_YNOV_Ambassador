import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screen_brightness/screen_brightness.dart';

import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/presentation/providers/ticketing_providers.dart';

class QrTicketFullScreenPage extends ConsumerStatefulWidget {
  const QrTicketFullScreenPage({required this.ticketId, super.key});

  final String ticketId;

  @override
  ConsumerState<QrTicketFullScreenPage> createState() =>
      _QrTicketFullScreenPageState();
}

class _QrTicketFullScreenPageState
    extends ConsumerState<QrTicketFullScreenPage> {
  @override
  void initState() {
    super.initState();
    unawaited(ScreenBrightness.instance.setApplicationScreenBrightness(1.0));
  }

  @override
  void dispose() {
    unawaited(ScreenBrightness.instance.resetApplicationScreenBrightness());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Ticket>> tickets = ref.watch(myTicketsControllerProvider);
    Ticket? ticket;
    final List<Ticket>? list = tickets.value;
    if (list != null) {
      for (final Ticket candidate in list) {
        if (candidate.id == widget.ticketId) {
          ticket = candidate;
          break;
        }
      }
    }

    return Scaffold(
      backgroundColor: AppColors.ink,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.close_rounded),
        ),
        title: const Text('Ton billet'),
      ),
      body: SafeArea(
        child: tickets.isLoading
            ? const Center(child: CircularProgressIndicator())
            : ticket == null
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(28),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Icon(
                            Icons.qr_code_2_rounded,
                            size: 64,
                            color: AppColors.textTertiary,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Billet introuvable',
                            style: AppTypography.textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Il n’est peut-être plus disponible hors ligne.',
                            style: AppTypography.textTheme.bodyMedium,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          FilledButton(
                            onPressed: () => context.go(AppRoutes.tickets),
                            child: const Text('Retour aux billets'),
                          ),
                        ],
                      ),
                    ),
                  )
                : _TicketBody(ticket: ticket),
      ),
    );
  }
}

class _TicketBody extends StatelessWidget {
  const _TicketBody({required this.ticket});

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    final Color accent = ticket.organizer.isBde ? AppColors.bde : AppColors.bds;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 24),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.outline),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  ticket.eventTitle,
                  textAlign: TextAlign.center,
                  style: AppTypography.textTheme.headlineSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  Formatters.fullDate(ticket.eventStartsAt),
                  style: AppTypography.textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  ticket.venueName,
                  style: AppTypography.textTheme.bodySmall,
                ),
                const SizedBox(height: 18),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: QrImageView(
                    data: ticket.qrPayload,
                    size: 260,
                    backgroundColor: Colors.white,
                    eyeStyle: const QrEyeStyle(
                      eyeShape: QrEyeShape.square,
                      color: Colors.black,
                    ),
                    dataModuleStyle: const QrDataModuleStyle(
                      dataModuleShape: QrDataModuleShape.square,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceElevated,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        ticket.shortCode,
                        style: AppTypography.textTheme.titleLarge?.copyWith(
                          letterSpacing: 2,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 12),
                      IconButton(
                        tooltip: 'Copier le code',
                        onPressed: () async {
                          await Clipboard.setData(
                            ClipboardData(text: ticket.shortCode),
                          );
                          if (context.mounted) {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                const SnackBar(content: Text('Code copié.')),
                              );
                          }
                        },
                        icon: const Icon(Icons.copy_rounded, size: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: <Widget>[
                    _InfoChip(
                      icon: Icons.person_rounded,
                      label: ticket.holderName,
                    ),
                    const SizedBox(width: 8),
                    if (ticket.seatLabel != null)
                      _InfoChip(
                        icon: Icons.event_seat_rounded,
                        label: ticket.seatLabel!,
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: accent.withValues(alpha: 0.16),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        ticket.organizer.label,
                        style: AppTypography.textTheme.labelSmall?.copyWith(
                          color: accent,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      Formatters.price(ticket.amountPaidCents, ticket.currency),
                      style: AppTypography.textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.surfaceElevated,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.outline),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.verified_rounded,
                  color: AppColors.success,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Le QR est signé par le serveur et vérifiable hors ligne par '
                    'le staff. La luminosité de l’écran est montée au maximum.',
                    style: AppTypography.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.surfaceElevated,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 15, color: AppColors.textTertiary),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
