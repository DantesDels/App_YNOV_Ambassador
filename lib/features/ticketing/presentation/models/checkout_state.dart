import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';

part 'checkout_state.freezed.dart';

@freezed
abstract class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    @Default(false) bool isQuoting,
    @Default(false) bool isPaying,
    @Default(1) int seats,
    CheckoutQuote? quote,
    Ticket? ticket,
    String? errorMessage,
  }) = _CheckoutState;

  const CheckoutState._();

  bool get isBusy => isQuoting || isPaying;

  bool get isReadyToPay => quote != null && !isBusy;
}
