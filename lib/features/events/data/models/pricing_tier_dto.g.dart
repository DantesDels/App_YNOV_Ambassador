// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_tier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PricingTierDto _$PricingTierDtoFromJson(Map<String, dynamic> json) =>
    _PricingTierDto(
      id: json['id'] as String,
      kind: json['kind'] as String,
      label: json['label'] as String,
      priceCents: (json['price_cents'] as num).toInt(),
      currency: json['currency'] as String,
      remainingSeats: (json['remaining_seats'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PricingTierDtoToJson(_PricingTierDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'label': instance.label,
      'price_cents': instance.priceCents,
      'currency': instance.currency,
      'remaining_seats': instance.remainingSeats,
    };
