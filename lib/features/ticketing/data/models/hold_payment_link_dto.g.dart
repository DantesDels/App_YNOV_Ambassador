// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold_payment_link_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HoldPaymentLinkDto _$HoldPaymentLinkDtoFromJson(Map<String, dynamic> json) =>
    _HoldPaymentLinkDto(
      id: json['id'] as String,
      url: json['url'] as String,
      label: json['label'] as String,
      claimedAt: json['claimed_at'] == null
          ? null
          : DateTime.parse(json['claimed_at'] as String),
    );

Map<String, dynamic> _$HoldPaymentLinkDtoToJson(_HoldPaymentLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'label': instance.label,
      'claimed_at': instance.claimedAt?.toIso8601String(),
    };
