import 'package:freezed_annotation/freezed_annotation.dart';

import 'profile_stats_dto.dart';

part 'student_profile_dto.freezed.dart';
part 'student_profile_dto.g.dart';

@freezed
abstract class StudentProfileDto with _$StudentProfileDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory StudentProfileDto({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String schoolName,
    @Default('') String campus,
    @Default('') String bio,
    @Default(<String>[]) List<String> interests,
    @Default(ProfileStatsDto()) ProfileStatsDto stats,
    @Default(false) bool isDiscreet,
    String? avatarUrl,
    DateTime? memberSince,
  }) = _StudentProfileDto;

  factory StudentProfileDto.fromJson(Map<String, dynamic> json) =>
      _$StudentProfileDtoFromJson(json);
}
