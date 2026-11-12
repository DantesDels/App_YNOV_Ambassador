// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentDto _$StudentDtoFromJson(Map<String, dynamic> json) => _StudentDto(
  id: json['id'] as String,
  email: json['email'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  schoolName: json['school_name'] as String,
  memberships:
      (json['memberships'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  avatarUrl: json['avatar_url'] as String?,
);

Map<String, dynamic> _$StudentDtoToJson(_StudentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'school_name': instance.schoolName,
      'memberships': instance.memberships,
      'avatar_url': instance.avatarUrl,
    };
