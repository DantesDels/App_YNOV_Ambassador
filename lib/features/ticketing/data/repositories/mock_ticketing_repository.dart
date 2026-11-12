import 'dart:math';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/core/mock/mock_campus_store.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_option.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/domain/payment_gateway.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';

class MockTicketingRepository implements TicketingRepository {
  const MockTicketingRepository(this._store);

  final MockCampusStore _store;

  @override
  Future<Result<CheckoutQuote>> createQuote({
    required String eventId,
    required CheckoutOption option,
    String? referrerId,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 450));
    try {
      return Success<CheckoutQuote>(
        _store.createQuote(eventId: eventId, option: option, referrerId: referrerId),
      );
    } on Object catch (error) {
      return Failed<CheckoutQuote>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<Ticket>> confirmPurchase(String quoteId) async {
    await Future<void>.delayed(const Duration(milliseconds: 700));
    try {
      return Success<Ticket>(_store.confirmPurchase(quoteId));
    } on Object catch (error) {
      return Failed<Ticket>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<List<Ticket>>> fetchMyTickets() async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    return Success<List<Ticket>>(_store.tickets);
  }

  @override
  Future<Result<GroupHoldReservation>> holdGroupSpots({
    required String eventId,
    required int seats,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    try {
      return Success<GroupHoldReservation>(
        _store.holdGroupSpots(eventId: eventId, seats: seats),
      );
    } on Object catch (error) {
      return Failed<GroupHoldReservation>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<void>> releaseHold(String holdId) async {
    _store.releaseHold(holdId);
    return const Success<void>(null);
  }

  @override
  Future<Result<List<int>>> exportAppleWalletPass(String ticketId) async {
    try {
      return Success<List<int>>(_store.exportAppleWalletPass(ticketId));
    } on Object catch (error) {
      return Failed<List<int>>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<String>> googleWalletSaveUrl(String ticketId) async {
    return Success<String>(_store.googleWalletSaveUrl(ticketId));
  }
}

/// Simulates the native Stripe PaymentSheet in demo mode.
///
/// No card form is shown and no real PaymentIntent is confirmed: the goal is to
/// exercise the full quote -> sheet -> confirmation orchestration.
class MockPaymentGateway implements PaymentGateway {
  MockPaymentGateway({Random? random}) : _random = random ?? Random();

  final Random _random;

  @override
  Future<PaymentOutcome> presentCheckout({
    required String paymentIntentClientSecret,
    required String merchantLabel,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: AppConfig.maxRetryAttempts * 200));
    if (paymentIntentClientSecret.isEmpty) {
      return const PaymentFailed('Paiement indisponible. Réessaie.');
    }
    if (_random.nextInt(20) == 0 && !AppConfig.useMockBackend) {
      return const PaymentFailed('Paiement refusé par la banque.');
    }
    return const PaymentCompleted();
  }
}
