import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_item_dto.freezed.dart';
part 'activity_item_dto.g.dart';

@freezed
abstract class ActivityItemDto with _$ActivityItemDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ActivityItemDto({
    required String id,
    required String type,
    required String actorName,
    required String eventId,
    required String eventTitle,
    required DateTime createdAt,
    String? actorAvatarUrl,
    @Default(1) int friendCount,
    @Default(false) bool isFriendActivity,
  }) = _ActivityItemDto;

  factory ActivityItemDto.fromJson(Map<String, dynamic> json) =>
      _$ActivityItemDtoFromJson(json);
}
