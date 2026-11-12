import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_option.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/payment_gateway.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';

class PurchaseTicketParams {
  const PurchaseTicketParams({
    required this.eventId,
    required this.option,
    this.referrerId,
  });

  final String eventId;
  final CheckoutOption option;
  final String? referrerId;
}

/// Orchestrates: server quote -> native PaymentSheet -> server confirmation.
class PurchaseTicketUseCase {
  const PurchaseTicketUseCase({
    required this._repository,
    required this._paymentGateway,
  });

  final TicketingRepository _repository;
  final PaymentGateway _paymentGateway;

  Future<Result<CheckoutQuote>> createQuote(PurchaseTicketParams params) {
    return _repository.createQuote(
      eventId: params.eventId,
      option: params.option,
      referrerId: params.referrerId,
    );
  }

  Future<Result<Ticket>> call(PurchaseTicketParams params) async {
    final Result<CheckoutQuote> quoteResult = await createQuote(params);
    if (quoteResult is Failed<CheckoutQuote>) {
      return Failed<Ticket>(quoteResult.failure);
    }
    final CheckoutQuote quote = quoteResult.getOrThrow();
    return payQuote(quote);
  }

  /// Second half of the flow, exposed so the checkout sheet can display the
  /// server-computed amount before opening the native payment sheet.
  Future<Result<Ticket>> payQuote(CheckoutQuote quote) async {
    final PaymentOutcome outcome = await _paymentGateway.presentCheckout(
      paymentIntentClientSecret: quote.paymentIntentClientSecret,
      merchantLabel: quote.label,
    );

    return switch (outcome) {
      PaymentCompleted() => _repository.confirmPurchase(quote.id),
      PaymentCancelled() => const Failed<Ticket>(PaymentFailure('Paiement annulé.')),
      PaymentFailed(:final message) => Failed<Ticket>(PaymentFailure(message)),
    };
  }
}
