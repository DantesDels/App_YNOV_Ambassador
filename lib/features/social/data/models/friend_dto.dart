import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_dto.freezed.dart';
part 'friend_dto.g.dart';

@freezed
abstract class FriendDto with _$FriendDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory FriendDto({
    required String id,
    required String firstName,
    String? lastName,
    String? avatarUrl,
    @Default('') String schoolName,
    DateTime? lastActiveAt,
    @Default(false) bool isOnline,
    @Default(0) int sharedEvents,
  }) = _FriendDto;

  factory FriendDto.fromJson(Map<String, dynamic> json) => _$FriendDtoFromJson(json);
}
