import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/ticketing/data/models/checkout_quote_dto.dart';
import 'package:campus_pulse/features/ticketing/data/models/group_hold_dto.dart';
import 'package:campus_pulse/features/ticketing/data/models/hold_payment_link_dto.dart';
import 'package:campus_pulse/features/ticketing/data/models/ticket_dto.dart';

extension TicketDtoMapper on TicketDto {
  Ticket toDomain() {
    return Ticket(
      id: id,
      eventId: eventId,
      eventTitle: eventTitle,
      eventStartsAt: eventStartsAt,
      venueName: venueName,
      organizerName: organizerName,
      organizer: OrganizerType.fromApi(organizer),
      holderName: holderName,
      qrPayload: qrPayload,
      shortCode: shortCode,
      status: switch (status) {
        'used' => TicketStatus.used,
        'expired' => TicketStatus.expired,
        'refunded' => TicketStatus.refunded,
        _ => TicketStatus.valid,
      },
      purchasedAt: purchasedAt,
      amountPaidCents: amountPaidCents,
      currency: currency,
      seatLabel: seatLabel,
      squadId: squadId,
    );
  }
}

extension CheckoutQuoteDtoMapper on CheckoutQuoteDto {
  CheckoutQuote toDomain() {
    return CheckoutQuote(
      id: id,
      eventId: eventId,
      paymentIntentClientSecret: paymentIntentClientSecret,
      amountCents: amountCents,
      currency: currency,
      label: label,
      seats: seats,
      expiresAt: expiresAt,
    );
  }
}

extension HoldPaymentLinkDtoMapper on HoldPaymentLinkDto {
  HoldPaymentLink toDomain() {
    return HoldPaymentLink(
      id: id,
      url: url,
      label: label,
      claimedAt: claimedAt,
    );
  }
}

extension GroupHoldDtoMapper on GroupHoldDto {
  GroupHoldReservation toDomain() {
    return GroupHoldReservation(
      id: id,
      eventId: eventId,
      eventTitle: eventTitle,
      seats: seats,
      expiresAt: expiresAt,
      paymentLinks: paymentLinks
          .map((HoldPaymentLinkDto link) => link.toDomain())
          .toList(growable: false),
      currency: currency,
      unitAmountCents: unitAmountCents,
    );
  }
}
