import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/events/domain/organizer_type.dart';

part 'ticket.freezed.dart';

enum TicketStatus { valid, used, expired, refunded }

/// A purchased ticket. [qrPayload] is signed by the backend (JWT/HMAC) and is
/// verified offline by staff; it is never generated on device.
@freezed
abstract class Ticket with _$Ticket {
  const factory Ticket({
    required String id,
    required String eventId,
    required String eventTitle,
    required DateTime eventStartsAt,
    required String venueName,
    required String organizerName,
    required OrganizerType organizer,
    required String holderName,
    required String qrPayload,
    required String shortCode,
    required TicketStatus status,
    required DateTime purchasedAt,
    required int amountPaidCents,
    required String currency,
    String? seatLabel,
    String? squadId,
  }) = _Ticket;

  const Ticket._();

  bool get isUsable => status == TicketStatus.valid;

  bool get isUpcoming => eventStartsAt.toLocal().isAfter(DateTime.now());

  bool get isToday {
    final DateTime local = eventStartsAt.toLocal();
    final DateTime now = DateTime.now();
    return local.year == now.year && local.month == now.month && local.day == now.day;
  }
}
