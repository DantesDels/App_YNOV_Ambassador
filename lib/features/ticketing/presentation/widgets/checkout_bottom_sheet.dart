import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/core/widgets/app_primary_button.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_option.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/presentation/models/checkout_state.dart';
import 'package:campus_pulse/features/ticketing/presentation/providers/ticketing_providers.dart';

/// Checkout tunnel: the sheet only displays the server quote and delegates
/// payment to the native Stripe PaymentSheet.
class CheckoutBottomSheet extends ConsumerStatefulWidget {
  const CheckoutBottomSheet({
    required this.event,
    this.referrerId,
    super.key,
  });

  final Event event;
  final String? referrerId;

  @override
  ConsumerState<CheckoutBottomSheet> createState() => _CheckoutBottomSheetState();
}

class _CheckoutBottomSheetState extends ConsumerState<CheckoutBottomSheet> {
  CheckoutOption _option = const CheckoutOption.individual();
  bool _didBootstrap = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_didBootstrap) {
        return;
      }
      _didBootstrap = true;
      final notifier =
          ref.read(checkoutControllerProvider(widget.event.id).notifier);
      notifier.reset();
      unawaited(_loadQuote());
    });
  }

  @override
  Widget build(BuildContext context) {
    final CheckoutState state =
        ref.watch(checkoutControllerProvider(widget.event.id));
    final CheckoutQuote? quote = state.quote;

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Finalise ta place',
                        style: AppTypography.textTheme.titleLarge,
                      ),
                      const SizedBox(height: 2),
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
            const SizedBox(height: 14),
            Text(
              'Choisis ton offre',
              style: AppTypography.textTheme.labelMedium,
            ),
            const SizedBox(height: 10),
            _buildOptionTile(
              option: const CheckoutOption.individual(),
              title: 'Place individuelle',
              subtitle: _individualSubtitle(),
              icon: Icons.confirmation_number_outlined,
            ),
            if (widget.event.pricing.hasSquadOffer) ...<Widget>[
              const SizedBox(height: 10),
              _buildOptionTile(
                option: CheckoutOption.squad(seats: _squadSeats),
                title: 'Pack escouade · $_squadSeats places',
                subtitle:
                    'Le tarif groupe est calculé par le serveur pour $_squadSeats potes.',
                icon: Icons.diversity_3_rounded,
                accent: AppColors.secondary,
              ),
            ],
            const SizedBox(height: 20),
            _QuoteCard(
              isQuoting: state.isQuoting,
              quote: quote,
              seats: state.seats,
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
            const SizedBox(height: 18),
            AppPrimaryButton(
              label: quote == null
                  ? 'Calcul du montant…'
                  : 'Payer ${Formatters.price(quote.amountCents, quote.currency)}',
              icon: Icons.lock_rounded,
              isLoading: state.isPaying || state.isQuoting,
              onPressed: state.isReadyToPay ? _pay : null,
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.verified_user_outlined,
                  size: 15,
                  color: AppColors.textTertiary,
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    'Montant calculé côté serveur. Paiement sécurisé par Stripe, '
                    'les fonds sont reversés au ${widget.event.organizer.label} via Stripe Connect.',
                    style: AppTypography.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile({
    required CheckoutOption option,
    required String title,
    required String subtitle,
    required IconData icon,
    Color accent = AppColors.primary,
  }) {
    final bool selected = _option == option;
    return InkWell(
      onTap: () => _selectOption(option),
      borderRadius: BorderRadius.circular(18),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: selected
              ? accent.withValues(alpha: 0.12)
              : AppColors.surfaceElevated,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: selected ? accent : AppColors.outline,
            width: selected ? 1.4 : 1,
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.16),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: accent, size: 21),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: AppTypography.textTheme.titleMedium),
                  const SizedBox(height: 2),
                  Text(subtitle, style: AppTypography.textTheme.bodySmall),
                ],
              ),
            ),
            Icon(
              selected
                  ? Icons.radio_button_checked_rounded
                  : Icons.radio_button_unchecked_rounded,
              color: selected ? accent : AppColors.textTertiary,
              size: 21,
            ),
          ],
        ),
      ),
    );
  }

  String _individualSubtitle() {
    final int? lowest = widget.event.pricing.lowestPriceCents;
    if (lowest == null) {
      return 'Prix confirmé par le serveur au moment du paiement.';
    }
    return 'À partir de ${Formatters.price(lowest, widget.event.pricing.currency)}, prix confirmé par le serveur.';
  }

  int get _squadSeats {
    final tier = widget.event.pricing.squadTier;
    if (tier == null) {
      return AppConfig.squadMaxSeats;
    }
    final RegExpMatch? match = RegExp(r'(\d+)').firstMatch(tier.label);
    final int parsed = int.tryParse(match?.group(1) ?? '') ?? AppConfig.squadMaxSeats;
    return parsed.clamp(AppConfig.squadMinSeats, AppConfig.squadMaxSeats).toInt();
  }

  Future<void> _selectOption(CheckoutOption option) async {
    if (_option == option) {
      return;
    }
    setState(() => _option = option);
    await _loadQuote();
  }

  Future<void> _loadQuote() async {
    await ref
        .read(checkoutControllerProvider(widget.event.id).notifier)
        .loadQuote(option: _option, referrerId: widget.referrerId);
  }

  Future<void> _pay() async {
    final Ticket? ticket =
        await ref.read(checkoutControllerProvider(widget.event.id).notifier).pay();
    if (!mounted) {
      return;
    }
    if (ticket != null) {
      Navigator.of(context).pop(ticket);
    }
  }
}

class _QuoteCard extends StatelessWidget {
  const _QuoteCard({
    required this.isQuoting,
    required this.quote,
    required this.seats,
  });

  final bool isQuoting;
  final CheckoutQuote? quote;
  final int seats;

  @override
  Widget build(BuildContext context) {
    final CheckoutQuote? current = quote;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.outline),
      ),
      child: isQuoting || current == null
          ? Row(
              children: <Widget>[
                const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2.2),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    isQuoting
                        ? 'Le serveur calcule le meilleur tarif…'
                        : 'Sélectionne une offre.',
                    style: AppTypography.textTheme.bodySmall,
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        current.label,
                        style: AppTypography.textTheme.titleMedium,
                      ),
                    ),
                    Text(
                      Formatters.price(current.amountCents, current.currency),
                      style: AppTypography.textTheme.headlineSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '${current.seats} place${current.seats > 1 ? 's' : ''} · '
                  'devis valable jusqu’à ${Formatters.time(current.expiresAt)}',
                  style: AppTypography.textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  'Référence ${current.id}',
                  style: AppTypography.textTheme.labelSmall,
                ),
              ],
            ),
    );
  }
}
