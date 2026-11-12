import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership_dto.freezed.dart';
part 'membership_dto.g.dart';

@freezed
abstract class MembershipDto with _$MembershipDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MembershipDto({
    required String organizer,
    required bool isActive,
    required DateTime memberSince,
    @Default(false) bool isPublic,
    @Default(<String>[]) List<String> perks,
    String? memberNumber,
  }) = _MembershipDto;

  factory MembershipDto.fromJson(Map<String, dynamic> json) => _$MembershipDtoFromJson(json);
}
