// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MembershipDto _$MembershipDtoFromJson(Map<String, dynamic> json) =>
    _MembershipDto(
      organizer: json['organizer'] as String,
      isActive: json['is_active'] as bool,
      memberSince: DateTime.parse(json['member_since'] as String),
      isPublic: json['is_public'] as bool? ?? false,
      perks:
          (json['perks'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      memberNumber: json['member_number'] as String?,
    );

Map<String, dynamic> _$MembershipDtoToJson(_MembershipDto instance) =>
    <String, dynamic>{
      'organizer': instance.organizer,
      'is_active': instance.isActive,
      'member_since': instance.memberSince.toIso8601String(),
      'is_public': instance.isPublic,
      'perks': instance.perks,
      'member_number': instance.memberNumber,
    };
