import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:campus_pulse/features/ticketing/domain/payment_gateway.dart';

class StripePaymentGateway implements PaymentGateway {
  const StripePaymentGateway();

  @override
  Future<PaymentOutcome> presentCheckout({
    required String paymentIntentClientSecret,
    required String merchantLabel,
  }) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentClientSecret,
          merchantDisplayName: 'CampusPulse · $merchantLabel',
          style: ThemeMode.dark,
          allowsDelayedPaymentMethods: false,
        ),
      );
      await Stripe.instance.presentPaymentSheet();
      return const PaymentCompleted();
    } on StripeException catch (error) {
      if (error.error.code == FailureCode.Canceled) {
        return const PaymentCancelled();
      }
      final String message = error.error.localizedMessage ??
          error.error.message ??
          'Le paiement n’a pas abouti.';
      return PaymentFailed(message);
    } on Object catch (error) {
      if (kDebugMode) {
        debugPrint('Stripe checkout failed: $error');
      }
      return const PaymentFailed('Le paiement n’a pas abouti. Réessaie.');
    }
  }
}
