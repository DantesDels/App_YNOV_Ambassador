import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/ticketing/domain/pricing_tier.dart';

part 'event_pricing.freezed.dart';

/// Read-only pricing summary built from server-provided tiers.
///
/// It helps the UI highlight the early-bird price and the squad offer. No price
/// is ever derived arithmetically here: every amount already exists in [tiers].
@freezed
abstract class EventPricing with _$EventPricing {
  const factory EventPricing({
    required List<PricingTier> tiers,
    @Default('EUR') String currency,
  }) = _EventPricing;

  const EventPricing._();

  factory EventPricing.fromTiers(List<PricingTier> tiers) {
    return EventPricing(
      tiers: List<PricingTier>.unmodifiable(tiers),
      currency: tiers.isEmpty ? 'EUR' : tiers.first.currency,
    );
  }

  List<PricingTier> get availableTiers => tiers
      .where((PricingTier tier) => tier.remainingSeats == null || tier.remainingSeats! > 0)
      .toList(growable: false);

  PricingTier? get earlyBirdTier {
    for (final PricingTier tier in tiers) {
      if (tier.isEarlyBird) {
        return tier;
      }
    }
    return null;
  }

  PricingTier? get squadTier {
    for (final PricingTier tier in tiers) {
      if (tier.kind == PricingKind.squad) {
        return tier;
      }
    }
    return null;
  }

  PricingTier? get standardTier {
    for (final PricingTier tier in tiers) {
      if (tier.kind == PricingKind.standard) {
        return tier;
      }
    }
    return tiers.isEmpty ? null : tiers.first;
  }

  int? get lowestPriceCents {
    int? lowest;
    for (final PricingTier tier in availableTiers) {
      if (lowest == null || tier.priceCents < lowest) {
        lowest = tier.priceCents;
      }
    }
    return lowest;
  }

  bool get hasEarlyBird => earlyBirdTier != null && !(earlyBirdTier!.remainingSeats == 0);

  bool get hasSquadOffer => squadTier != null;
}
