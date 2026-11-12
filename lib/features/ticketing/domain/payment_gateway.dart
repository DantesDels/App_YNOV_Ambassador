sealed class PaymentOutcome {
  const PaymentOutcome();
}

final class PaymentCompleted extends PaymentOutcome {
  const PaymentCompleted();
}

final class PaymentCancelled extends PaymentOutcome {
  const PaymentCancelled();
}

final class PaymentFailed extends PaymentOutcome {
  const PaymentFailed(this.message);

  final String message;
}

/// Abstract payment port implemented by the Stripe adapter. The domain never
/// imports `flutter_stripe`.
abstract interface class PaymentGateway {
  Future<PaymentOutcome> presentCheckout({
    required String paymentIntentClientSecret,
    required String merchantLabel,
  });
}
