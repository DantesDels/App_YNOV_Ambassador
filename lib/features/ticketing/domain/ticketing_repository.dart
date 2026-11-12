import 'package:campus_pulse/core/errors/result.dart';
import 'checkout_option.dart';
import 'checkout_quote.dart';
import 'group_hold_reservation.dart';
import 'ticket.dart';

abstract interface class TicketingRepository {
  /// Creates a server-priced quote and the matching Stripe PaymentIntent.
  /// Implementation must route the funds to the event organizer's Stripe
  /// Connect account (BDE or BDS) on the backend.
  Future<Result<CheckoutQuote>> createQuote({
    required String eventId,
    required CheckoutOption option,
    String? referrerId,
  });

  /// Confirms the payment server-side, returns the signed ticket and caches it.
  Future<Result<Ticket>> confirmPurchase(String quoteId);

  Future<Result<List<Ticket>>> fetchMyTickets();

  Future<Result<GroupHoldReservation>> holdGroupSpots({
    required String eventId,
    required int seats,
  });

  Future<Result<void>> releaseHold(String holdId);

  /// Returns the raw `.pkpass` bytes for Apple Wallet, or a Google Wallet save
  /// URL. Never includes a signing secret: the backend signs the pass.
  Future<Result<List<int>>> exportAppleWalletPass(String ticketId);

  Future<Result<String>> googleWalletSaveUrl(String ticketId);
}
