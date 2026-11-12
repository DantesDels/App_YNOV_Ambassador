import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/core/mock/mock_campus_store.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/profile_repository.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';

class MockProfileRepository implements ProfileRepository {
  const MockProfileRepository(this._store);

  final MockCampusStore _store;

  @override
  Future<Result<StudentProfile>> fetchProfile() async {
    await Future<void>.delayed(const Duration(milliseconds: 260));
    return Success<StudentProfile>(_store.profile);
  }

  @override
  Future<Result<StudentProfile>> updateProfile({
    required String firstName,
    required String lastName,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 420));
    try {
      return Success<StudentProfile>(
        _store.updateProfile(firstName: firstName, lastName: lastName),
      );
    } on Object catch (error) {
      return Failed<StudentProfile>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<List<Membership>>> fetchMemberships() async {
    await Future<void>.delayed(const Duration(milliseconds: 220));
    return Success<List<Membership>>(_store.memberships);
  }

  @override
  Future<Result<Membership>> setMembershipVisibility({
    required OrganizerType organizer,
    required bool isPublic,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 280));
    try {
      return Success<Membership>(
        _store.setMembershipVisibility(organizer: organizer, isPublic: isPublic),
      );
    } on Object catch (error) {
      return Failed<Membership>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<NotificationSettings>> fetchNotificationSettings() async {
    return Success<NotificationSettings>(_store.notificationSettings);
  }

  @override
  Future<Result<NotificationSettings>> updateNotificationSettings(
    NotificationSettings settings,
  ) async {
    await Future<void>.delayed(const Duration(milliseconds: 220));
    return Success<NotificationSettings>(_store.updateNotificationSettings(settings));
  }

  @override
  Future<Result<StudentProfile>> setDiscreetMode(bool enabled) async {
    await Future<void>.delayed(const Duration(milliseconds: 320));
    return Success<StudentProfile>(_store.setDiscreetMode(enabled));
  }
}
