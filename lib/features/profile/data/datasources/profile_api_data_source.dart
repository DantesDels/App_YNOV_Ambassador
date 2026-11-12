import 'package:dio/dio.dart';

import 'package:campus_pulse/core/constants/api_endpoints.dart';
import 'package:campus_pulse/core/network/api_data_parser.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';
import 'package:campus_pulse/features/profile/data/mappers/profile_mapper.dart';
import 'package:campus_pulse/features/profile/data/models/membership_dto.dart';
import 'package:campus_pulse/features/profile/data/models/notification_settings_dto.dart';
import 'package:campus_pulse/features/profile/data/models/student_profile_dto.dart';

class ProfileApiDataSource {
  const ProfileApiDataSource(this._dio);

  final Dio _dio;

  Future<StudentProfile> fetchProfile() async {
    final Response<dynamic> response = await _dio.get<dynamic>(ApiEndpoints.profile);
    return StudentProfileDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }

  Future<StudentProfile> updateProfile({
    required String firstName,
    required String lastName,
  }) async {
    final Response<dynamic> response = await _dio.patch<dynamic>(
      ApiEndpoints.profile,
      data: <String, dynamic>{'firstName': firstName, 'lastName': lastName},
    );
    return StudentProfileDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }

  Future<List<Membership>> fetchMemberships() async {
    final Response<dynamic> response = await _dio.get<dynamic>(ApiEndpoints.memberships);
    return ApiDataParser.list(response.data)
        .map((Map<String, dynamic> json) => MembershipDto.fromJson(json).toDomain())
        .toList(growable: false);
  }

  Future<Membership> setMembershipVisibility({
    required String organizer,
    required bool isPublic,
  }) async {
    final Response<dynamic> response = await _dio.patch<dynamic>(
      ApiEndpoints.membership(organizer),
      data: <String, dynamic>{'isPublic': isPublic},
    );
    return MembershipDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }

  Future<NotificationSettings> fetchNotificationSettings() async {
    final Response<dynamic> response = await _dio.get<dynamic>(
      ApiEndpoints.notificationSettings,
    );
    return NotificationSettingsDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }

  Future<NotificationSettings> updateNotificationSettings(
    NotificationSettings settings,
  ) async {
    final Response<dynamic> response = await _dio.put<dynamic>(
      ApiEndpoints.notificationSettings,
      data: settings.toDto().toJson(),
    );
    return NotificationSettingsDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }

  Future<StudentProfile> setDiscreetMode(bool enabled) async {
    final Response<dynamic> response = await _dio.patch<dynamic>(
      ApiEndpoints.discreetMode,
      data: <String, dynamic>{'enabled': enabled},
    );
    return StudentProfileDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }
}
