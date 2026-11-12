import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/profile_repository.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';
import 'package:campus_pulse/features/profile/data/datasources/profile_api_data_source.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._dataSource);

  final ProfileApiDataSource _dataSource;

  @override
  Future<Result<StudentProfile>> fetchProfile() async {
    try {
      return Success<StudentProfile>(await _dataSource.fetchProfile());
    } on Object catch (error) {
      return Failed<StudentProfile>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<StudentProfile>> updateProfile({
    required String firstName,
    required String lastName,
  }) async {
    try {
      return Success<StudentProfile>(
        await _dataSource.updateProfile(firstName: firstName, lastName: lastName),
      );
    } on Object catch (error) {
      return Failed<StudentProfile>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<List<Membership>>> fetchMemberships() async {
    try {
      return Success<List<Membership>>(await _dataSource.fetchMemberships());
    } on Object catch (error) {
      return Failed<List<Membership>>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<Membership>> setMembershipVisibility({
    required OrganizerType organizer,
    required bool isPublic,
  }) async {
    try {
      return Success<Membership>(
        await _dataSource.setMembershipVisibility(
          organizer: organizer.apiValue,
          isPublic: isPublic,
        ),
      );
    } on Object catch (error) {
      return Failed<Membership>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<NotificationSettings>> fetchNotificationSettings() async {
    try {
      return Success<NotificationSettings>(await _dataSource.fetchNotificationSettings());
    } on Object catch (error) {
      return Failed<NotificationSettings>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<NotificationSettings>> updateNotificationSettings(
    NotificationSettings settings,
  ) async {
    try {
      return Success<NotificationSettings>(
        await _dataSource.updateNotificationSettings(settings),
      );
    } on Object catch (error) {
      return Failed<NotificationSettings>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<StudentProfile>> setDiscreetMode(bool enabled) async {
    try {
      return Success<StudentProfile>(await _dataSource.setDiscreetMode(enabled));
    } on Object catch (error) {
      return Failed<StudentProfile>(FailureMapper.from(error));
    }
  }
}
