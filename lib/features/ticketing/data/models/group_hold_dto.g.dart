// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_hold_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupHoldDto _$GroupHoldDtoFromJson(Map<String, dynamic> json) =>
    _GroupHoldDto(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      eventTitle: json['event_title'] as String,
      seats: (json['seats'] as num).toInt(),
      expiresAt: DateTime.parse(json['expires_at'] as String),
      paymentLinks: (json['payment_links'] as List<dynamic>)
          .map((e) => HoldPaymentLinkDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      currency: json['currency'] as String,
      unitAmountCents: (json['unit_amount_cents'] as num).toInt(),
    );

Map<String, dynamic> _$GroupHoldDtoToJson(_GroupHoldDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'event_title': instance.eventTitle,
      'seats': instance.seats,
      'expires_at': instance.expiresAt.toIso8601String(),
      'payment_links': instance.paymentLinks.map((e) => e.toJson()).toList(),
      'currency': instance.currency,
      'unit_amount_cents': instance.unitAmountCents,
    };
