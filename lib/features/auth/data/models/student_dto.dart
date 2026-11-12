import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_dto.freezed.dart';
part 'student_dto.g.dart';

/// Identity payload returned by `/auth/me` and embedded in the OTP/SSO response.
@freezed
abstract class StudentDto with _$StudentDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StudentDto({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String schoolName,
    @Default(<String>[]) List<String> memberships,
    String? avatarUrl,
  }) = _StudentDto;

  factory StudentDto.fromJson(Map<String, dynamic> json) => _$StudentDtoFromJson(json);
}
