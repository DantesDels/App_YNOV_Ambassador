import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_tier.freezed.dart';

enum PricingKind { earlyBird, standard, squad }

/// A server-priced tier. The client only *displays* these amounts.
@freezed
abstract class PricingTier with _$PricingTier {
  const factory PricingTier({
    required String id,
    required PricingKind kind,
    required String label,
    required int priceCents,
    required String currency,
    int? remainingSeats,
  }) = _PricingTier;

  const PricingTier._();

  bool get isEarlyBird => kind == PricingKind.earlyBird;

  bool get isAlmostGone => remainingSeats != null && remainingSeats! > 0 && remainingSeats! <= 15;
}
