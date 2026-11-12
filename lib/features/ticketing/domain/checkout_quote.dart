import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_quote.freezed.dart';

/// Server-computed checkout quote.
///
/// [amountCents] is authoritative: the UI never multiplies a unit price.
@freezed
abstract class CheckoutQuote with _$CheckoutQuote {
  const factory CheckoutQuote({
    required String id,
    required String eventId,
    required String paymentIntentClientSecret,
    required int amountCents,
    required String currency,
    required String label,
    required int seats,
    required DateTime expiresAt,
  }) = _CheckoutQuote;
}
