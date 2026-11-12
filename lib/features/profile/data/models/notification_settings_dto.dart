import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings_dto.freezed.dart';
part 'notification_settings_dto.g.dart';

@freezed
abstract class NotificationSettingsDto with _$NotificationSettingsDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory NotificationSettingsDto({
    @Default(true) bool pushEnabled,
    @Default(true) bool friendActivity,
    @Default(true) bool eventReminders,
    @Default(true) bool squadAlerts,
    @Default(true) bool smartAlerts,
    @Default(false) bool discreetMode,
    @Default(0) int quietHoursStart,
    @Default(7) int quietHoursEnd,
    @Default(true) bool locationBasedAlerts,
  }) = _NotificationSettingsDto;

  factory NotificationSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsDtoFromJson(json);
}
