import 'package:dio/dio.dart';

import 'package:campus_pulse/core/constants/api_endpoints.dart';
import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/core/network/api_data_parser.dart';
import 'package:campus_pulse/features/auth/domain/school_email.dart';
import 'package:campus_pulse/features/auth/domain/sso_provider.dart';
import 'package:campus_pulse/features/auth/data/models/auth_session_dto.dart';
import 'package:campus_pulse/features/auth/data/models/otp_challenge_dto.dart';
import 'package:campus_pulse/features/auth/data/models/student_dto.dart';

/// Auth endpoints. The access/refresh JWT pair is carried in the response body
/// and immediately moved to secure storage by the repository.
class AuthApiDataSource {
  const AuthApiDataSource(this._dio);

  final Dio _dio;

  Future<OtpChallengeDto> requestOtp(SchoolEmail email) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.requestOtp,
      data: <String, dynamic>{'email': email.value},
    );
    return OtpChallengeDto.fromJson(ApiDataParser.map(response.data));
  }

  Future<AuthSessionDto> verifyOtp({
    required String challengeId,
    required String code,
  }) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.verifyOtp,
      data: <String, dynamic>{'challengeId': challengeId, 'code': code},
    );
    return AuthSessionDto.fromJson(ApiDataParser.map(response.data));
  }

  Future<AuthSessionDto> signInWithSso(SsoProvider provider) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.sso,
      data: <String, dynamic>{'provider': provider.apiValue},
    );
    return AuthSessionDto.fromJson(ApiDataParser.map(response.data));
  }

  Future<StudentDto> fetchMe() async {
    final Response<dynamic> response = await _dio.get<dynamic>(ApiEndpoints.me);
    return StudentDto.fromJson(ApiDataParser.map(response.data));
  }

  Future<void> logout() async {
    try {
      await _dio.post<dynamic>(ApiEndpoints.logout);
    } on DioException catch (error) {
      // Signing out locally must succeed even when the server is unreachable.
      if (error.response?.statusCode == null) {
        throw NetworkException('Déconnexion locale effectuée hors ligne.', error);
      }
    }
  }
}
