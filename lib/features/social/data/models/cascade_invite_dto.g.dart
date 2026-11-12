// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cascade_invite_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CascadeInviteDto _$CascadeInviteDtoFromJson(Map<String, dynamic> json) =>
    _CascadeInviteDto(
      eventId: json['event_id'] as String,
      eventTitle: json['event_title'] as String,
      referrerId: json['referrer_id'] as String,
      shareUrl: json['share_url'] as String,
      shareMessage: json['share_message'] as String,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      squadSeats: (json['squad_seats'] as num?)?.toInt() ?? 3,
      invitedCount: (json['invited_count'] as num?)?.toInt() ?? 0,
      squadDiscountUnlocked: json['squad_discount_unlocked'] as bool? ?? false,
      discountLabel: json['discount_label'] as String?,
    );

Map<String, dynamic> _$CascadeInviteDtoToJson(_CascadeInviteDto instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'event_title': instance.eventTitle,
      'referrer_id': instance.referrerId,
      'share_url': instance.shareUrl,
      'share_message': instance.shareMessage,
      'expires_at': instance.expiresAt?.toIso8601String(),
      'squad_seats': instance.squadSeats,
      'invited_count': instance.invitedCount,
      'squad_discount_unlocked': instance.squadDiscountUnlocked,
      'discount_label': instance.discountLabel,
    };
