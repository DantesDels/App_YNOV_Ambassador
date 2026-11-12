import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_hold_reservation.freezed.dart';

@freezed
abstract class HoldPaymentLink with _$HoldPaymentLink {
  const factory HoldPaymentLink({
    required String id,
    required String url,
    required String label,
    DateTime? claimedAt,
  }) = _HoldPaymentLink;

  const HoldPaymentLink._();

  bool get isClaimed => claimedAt != null;
}

/// Temporary atomic seat lock (15 minutes, max 3 seats).
@freezed
abstract class GroupHoldReservation with _$GroupHoldReservation {
  const factory GroupHoldReservation({
    required String id,
    required String eventId,
    required String eventTitle,
    required int seats,
    required DateTime expiresAt,
    required List<HoldPaymentLink> paymentLinks,
    required String currency,
    required int unitAmountCents,
  }) = _GroupHoldReservation;

  const GroupHoldReservation._();

  Duration get remaining {
    final Duration left = expiresAt.difference(DateTime.now());
    return left.isNegative ? Duration.zero : left;
  }

  bool get isExpired => remaining == Duration.zero;

  int get claimedSeats => paymentLinks.where((HoldPaymentLink link) => link.isClaimed).length;
}
