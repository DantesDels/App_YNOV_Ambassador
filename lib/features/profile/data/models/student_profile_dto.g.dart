// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentProfileDto _$StudentProfileDtoFromJson(Map<String, dynamic> json) =>
    _StudentProfileDto(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      schoolName: json['school_name'] as String,
      campus: json['campus'] as String? ?? '',
      bio: json['bio'] as String? ?? '',
      interests:
          (json['interests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      stats: json['stats'] == null
          ? const ProfileStatsDto()
          : ProfileStatsDto.fromJson(json['stats'] as Map<String, dynamic>),
      isDiscreet: json['is_discreet'] as bool? ?? false,
      avatarUrl: json['avatar_url'] as String?,
      memberSince: json['member_since'] == null
          ? null
          : DateTime.parse(json['member_since'] as String),
    );

Map<String, dynamic> _$StudentProfileDtoToJson(_StudentProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'school_name': instance.schoolName,
      'campus': instance.campus,
      'bio': instance.bio,
      'interests': instance.interests,
      'stats': instance.stats.toJson(),
      'is_discreet': instance.isDiscreet,
      'avatar_url': instance.avatarUrl,
      'member_since': instance.memberSince?.toIso8601String(),
    };
