import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/profile/data/models/membership_dto.dart';
import 'package:campus_pulse/features/profile/data/models/notification_settings_dto.dart';
import 'package:campus_pulse/features/profile/data/models/profile_stats_dto.dart';
import 'package:campus_pulse/features/profile/data/models/student_profile_dto.dart';

extension ProfileStatsDtoMapper on ProfileStatsDto {
  ProfileStats toDomain() {
    return ProfileStats(
      ticketsCount: ticketsCount,
      eventsAttended: eventsAttended,
      friendsCount: friendsCount,
      squadsJoined: squadsJoined,
    );
  }
}

extension StudentProfileDtoMapper on StudentProfileDto {
  StudentProfile toDomain() {
    return StudentProfile(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      schoolName: schoolName,
      campus: campus,
      bio: bio,
      interests: interests,
      stats: stats.toDomain(),
      isDiscreet: isDiscreet,
      avatarUrl: avatarUrl,
      memberSince: memberSince,
    );
  }
}

extension MembershipDtoMapper on MembershipDto {
  Membership toDomain() {
    return Membership(
      organizer: OrganizerType.fromApi(organizer),
      isActive: isActive,
      memberSince: memberSince,
      isPublic: isPublic,
      perks: perks,
      memberNumber: memberNumber,
    );
  }
}

extension NotificationSettingsDtoMapper on NotificationSettingsDto {
  NotificationSettings toDomain() {
    return NotificationSettings(
      pushEnabled: pushEnabled,
      friendActivity: friendActivity,
      eventReminders: eventReminders,
      squadAlerts: squadAlerts,
      smartAlerts: smartAlerts,
      discreetMode: discreetMode,
      quietHoursStart: quietHoursStart,
      quietHoursEnd: quietHoursEnd,
      locationBasedAlerts: locationBasedAlerts,
    );
  }
}

extension NotificationSettingsToDto on NotificationSettings {
  NotificationSettingsDto toDto() {
    return NotificationSettingsDto(
      pushEnabled: pushEnabled,
      friendActivity: friendActivity,
      eventReminders: eventReminders,
      squadAlerts: squadAlerts,
      smartAlerts: smartAlerts,
      discreetMode: discreetMode,
      quietHoursStart: quietHoursStart,
      quietHoursEnd: quietHoursEnd,
      locationBasedAlerts: locationBasedAlerts,
    );
  }
}
