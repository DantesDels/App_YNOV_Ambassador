// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_quote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutQuoteDto _$CheckoutQuoteDtoFromJson(Map<String, dynamic> json) =>
    _CheckoutQuoteDto(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      paymentIntentClientSecret: json['payment_intent_client_secret'] as String,
      amountCents: (json['amount_cents'] as num).toInt(),
      currency: json['currency'] as String,
      label: json['label'] as String,
      seats: (json['seats'] as num).toInt(),
      expiresAt: DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$CheckoutQuoteDtoToJson(_CheckoutQuoteDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'payment_intent_client_secret': instance.paymentIntentClientSecret,
      'amount_cents': instance.amountCents,
      'currency': instance.currency,
      'label': instance.label,
      'seats': instance.seats,
      'expires_at': instance.expiresAt.toIso8601String(),
    };
