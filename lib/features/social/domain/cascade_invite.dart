import 'package:freezed_annotation/freezed_annotation.dart';

part 'cascade_invite.freezed.dart';

/// Shareable invitation produced by the backend.
///
/// The URL contains the student's referrer id so the cascade (friend of friend)
/// can be attributed server-side. No discount is computed on the client: the
/// label and eligibility are decided by the API.
@freezed
abstract class CascadeInvite with _$CascadeInvite {
  const factory CascadeInvite({
    required String eventId,
    required String eventTitle,
    required String referrerId,
    required String shareUrl,
    required String shareMessage,
    DateTime? expiresAt,
    @Default(3) int squadSeats,
    @Default(0) int invitedCount,
    @Default(false) bool squadDiscountUnlocked,
    String? discountLabel,
  }) = _CascadeInvite;

  const CascadeInvite._();

  bool get isExpired {
    final DateTime? expiry = expiresAt;
    return expiry != null && !expiry.isAfter(DateTime.now());
  }

  bool get isSquadComplete => invitedCount >= squadSeats;
}
