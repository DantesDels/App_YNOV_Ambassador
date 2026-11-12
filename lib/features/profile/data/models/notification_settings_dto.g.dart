// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSettingsDto _$NotificationSettingsDtoFromJson(
  Map<String, dynamic> json,
) => _NotificationSettingsDto(
  pushEnabled: json['push_enabled'] as bool? ?? true,
  friendActivity: json['friend_activity'] as bool? ?? true,
  eventReminders: json['event_reminders'] as bool? ?? true,
  squadAlerts: json['squad_alerts'] as bool? ?? true,
  smartAlerts: json['smart_alerts'] as bool? ?? true,
  discreetMode: json['discreet_mode'] as bool? ?? false,
  quietHoursStart: (json['quiet_hours_start'] as num?)?.toInt() ?? 0,
  quietHoursEnd: (json['quiet_hours_end'] as num?)?.toInt() ?? 7,
  locationBasedAlerts: json['location_based_alerts'] as bool? ?? true,
);

Map<String, dynamic> _$NotificationSettingsDtoToJson(
  _NotificationSettingsDto instance,
) => <String, dynamic>{
  'push_enabled': instance.pushEnabled,
  'friend_activity': instance.friendActivity,
  'event_reminders': instance.eventReminders,
  'squad_alerts': instance.squadAlerts,
  'smart_alerts': instance.smartAlerts,
  'discreet_mode': instance.discreetMode,
  'quiet_hours_start': instance.quietHoursStart,
  'quiet_hours_end': instance.quietHoursEnd,
  'location_based_alerts': instance.locationBasedAlerts,
};
