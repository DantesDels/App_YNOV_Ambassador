import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_option.freezed.dart';

/// Checkout choices exposed by the pricing sheet. Amounts are never derived
/// here: each option is sent to the backend which returns a signed quote.
@freezed
sealed class CheckoutOption with _$CheckoutOption {
  const factory CheckoutOption.individual() = IndividualCheckout;
  const factory CheckoutOption.squad({required int seats}) = SquadCheckout;

  const CheckoutOption._();

  String get label => switch (this) {
    IndividualCheckout() => 'Place individuelle',
    SquadCheckout(:final int seats) => 'Pack escouade ($seats places)',
  };

  int get seats => switch (this) {
    IndividualCheckout() => 1,
    SquadCheckout(:final int seats) => seats,
  };

  String get apiValue => switch (this) {
    IndividualCheckout() => 'individual',
    SquadCheckout() => 'squad',
  };
}
