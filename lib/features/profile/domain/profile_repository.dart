import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'membership.dart';
import 'notification_settings.dart';
import 'student_profile.dart';

abstract interface class ProfileRepository {
  Future<Result<StudentProfile>> fetchProfile();

  Future<Result<StudentProfile>> updateProfile({
    required String firstName,
    required String lastName,
  });

  Future<Result<List<Membership>>> fetchMemberships();

  Future<Result<Membership>> setMembershipVisibility({
    required OrganizerType organizer,
    required bool isPublic,
  });

  Future<Result<NotificationSettings>> fetchNotificationSettings();

  Future<Result<NotificationSettings>> updateNotificationSettings(
    NotificationSettings settings,
  );

  /// Global GDPR "mode discret": hide the student from every social surface.
  Future<Result<StudentProfile>> setDiscreetMode(bool enabled);
}
