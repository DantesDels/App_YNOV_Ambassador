import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings.freezed.dart';

/// Smart alerts combine a student's interests and their friends' plans to only
/// ping them on relevant events ("3 potes y vont, plus que 12 places").
@freezed
abstract class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    @Default(true) bool pushEnabled,
    @Default(true) bool friendActivity,
    @Default(true) bool eventReminders,
    @Default(true) bool squadAlerts,
    @Default(true) bool smartAlerts,
    @Default(false) bool discreetMode,
    @Default(0) int quietHoursStart,
    @Default(7) int quietHoursEnd,
    @Default(true) bool locationBasedAlerts,
  }) = _NotificationSettings;

  const NotificationSettings._();

  bool get hasQuietHours => quietHoursStart != quietHoursEnd;

  String get quietHoursLabel {
    String format(int hour) => '${hour.toString().padLeft(2, '0')}:00';
    return '${format(quietHoursStart)} – ${format(quietHoursEnd)}';
  }

  /// True when notifications should be muted at [moment].
  bool isQuietTime(DateTime moment) {
    if (!hasQuietHours) {
      return false;
    }
    final int hour = moment.hour;
    if (quietHoursStart < quietHoursEnd) {
      return hour >= quietHoursStart && hour < quietHoursEnd;
    }
    return hour >= quietHoursStart || hour < quietHoursEnd;
  }
}
