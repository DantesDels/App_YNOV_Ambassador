import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_attendee_dto.freezed.dart';
part 'event_attendee_dto.g.dart';

@freezed
abstract class EventAttendeeDto with _$EventAttendeeDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EventAttendeeDto({
    required String id,
    required String firstName,
    String? lastName,
    String? avatarUrl,
    @Default(true) bool isFriend,
  }) = _EventAttendeeDto;

  factory EventAttendeeDto.fromJson(Map<String, dynamic> json) =>
      _$EventAttendeeDtoFromJson(json);
}
