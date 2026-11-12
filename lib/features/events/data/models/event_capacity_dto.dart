import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_capacity_dto.freezed.dart';
part 'event_capacity_dto.g.dart';

@freezed
abstract class EventCapacityDto with _$EventCapacityDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EventCapacityDto({
    required int totalSeats,
    required int seatsTaken,
    @Default(0) int heldSeats,
    DateTime? updatedAt,
  }) = _EventCapacityDto;

  factory EventCapacityDto.fromJson(Map<String, dynamic> json) =>
      _$EventCapacityDtoFromJson(json);
}
