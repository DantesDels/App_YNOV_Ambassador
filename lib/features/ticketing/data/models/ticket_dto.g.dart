// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) => _TicketDto(
  id: json['id'] as String,
  eventId: json['event_id'] as String,
  eventTitle: json['event_title'] as String,
  eventStartsAt: DateTime.parse(json['event_starts_at'] as String),
  venueName: json['venue_name'] as String,
  organizerName: json['organizer_name'] as String,
  organizer: json['organizer'] as String,
  holderName: json['holder_name'] as String,
  qrPayload: json['qr_payload'] as String,
  shortCode: json['short_code'] as String,
  status: json['status'] as String,
  purchasedAt: DateTime.parse(json['purchased_at'] as String),
  amountPaidCents: (json['amount_paid_cents'] as num).toInt(),
  currency: json['currency'] as String,
  seatLabel: json['seat_label'] as String?,
  squadId: json['squad_id'] as String?,
);

Map<String, dynamic> _$TicketDtoToJson(_TicketDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'event_title': instance.eventTitle,
      'event_starts_at': instance.eventStartsAt.toIso8601String(),
      'venue_name': instance.venueName,
      'organizer_name': instance.organizerName,
      'organizer': instance.organizer,
      'holder_name': instance.holderName,
      'qr_payload': instance.qrPayload,
      'short_code': instance.shortCode,
      'status': instance.status,
      'purchased_at': instance.purchasedAt.toIso8601String(),
      'amount_paid_cents': instance.amountPaidCents,
      'currency': instance.currency,
      'seat_label': instance.seatLabel,
      'squad_id': instance.squadId,
    };
