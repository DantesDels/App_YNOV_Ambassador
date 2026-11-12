import 'package:freezed_annotation/freezed_annotation.dart';

import 'student_dto.dart';

part 'auth_session_dto.freezed.dart';
part 'auth_session_dto.g.dart';

@freezed
abstract class AuthSessionDto with _$AuthSessionDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AuthSessionDto({
    required String accessToken,
    required String refreshToken,
    required StudentDto student,
    DateTime? accessTokenExpiresAt,
    @Default(false) bool isNewAccount,
  }) = _AuthSessionDto;

  factory AuthSessionDto.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionDtoFromJson(json);
}
