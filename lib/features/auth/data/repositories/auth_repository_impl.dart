import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/core/security/auth_tokens.dart';
import 'package:campus_pulse/core/security/jwt_decoder.dart';
import 'package:campus_pulse/core/security/secure_storage_service.dart';
import 'package:campus_pulse/features/auth/domain/auth_repository.dart';
import 'package:campus_pulse/features/auth/domain/auth_session.dart';
import 'package:campus_pulse/features/auth/domain/otp_challenge.dart';
import 'package:campus_pulse/features/auth/domain/school_email.dart';
import 'package:campus_pulse/features/auth/domain/sso_provider.dart';
import 'package:campus_pulse/features/auth/data/datasources/auth_api_data_source.dart';
import 'package:campus_pulse/features/auth/data/mappers/auth_mapper.dart';
import 'package:campus_pulse/features/auth/data/models/auth_session_dto.dart';
import 'package:campus_pulse/features/auth/data/models/otp_challenge_dto.dart';
import 'package:campus_pulse/features/auth/data/models/student_dto.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required this._dataSource,
    required this._storage,
    required this._jwtDecoder,
  });

  final AuthApiDataSource _dataSource;
  final SecureStorageService _storage;
  final JwtDecoder _jwtDecoder;

  @override
  Future<Result<OtpChallenge>> requestOtp(SchoolEmail email) async {
    try {
      final OtpChallengeDto dto = await _dataSource.requestOtp(email);
      return Success<OtpChallenge>(dto.toDomain());
    } on Object catch (error) {
      return Failed<OtpChallenge>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<AuthSession>> verifyOtp({
    required String challengeId,
    required String code,
  }) async {
    try {
      final AuthSessionDto dto = await _dataSource.verifyOtp(
        challengeId: challengeId,
        code: code,
      );
      return Success<AuthSession>(await _persist(dto));
    } on Object catch (error) {
      return Failed<AuthSession>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<AuthSession>> signInWithSso(SsoProvider provider) async {
    try {
      final AuthSessionDto dto = await _dataSource.signInWithSso(provider);
      return Success<AuthSession>(await _persist(dto));
    } on Object catch (error) {
      return Failed<AuthSession>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<AuthSession?>> restoreSession() async {
    try {
      final AuthTokens? tokens = await _storage.readAuthTokens();
      if (tokens == null) {
        return const Success<AuthSession?>(null);
      }
      final StudentDto student = await _dataSource.fetchMe();
      return Success<AuthSession?>(
        student.toSession(
          accessToken: tokens.accessToken,
          refreshToken: tokens.refreshToken,
          expiresAt: tokens.accessTokenExpiresAt,
        ),
      );
    } on Object catch (error) {
      final Failure failure = FailureMapper.from(error);
      if (failure is NetworkFailure || failure is ServerFailure) {
        // A cached session cannot be trusted without a server check, but
        // keeping the token pair means a retry will succeed once back online.
        return Failed<AuthSession?>(failure);
      }
      await _safeClear();
      return const Success<AuthSession?>(null);
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      await _dataSource.logout();
    } on AppException {
      // Local sign-out is authoritative.
    }
    try {
      await _storage.wipeAll();
      return const Success<void>(null);
    } on Object catch (error) {
      return Failed<void>(FailureMapper.from(error));
    }
  }

  Future<AuthSession> _persist(AuthSessionDto dto) async {
    final DateTime? expiresAt =
        dto.accessTokenExpiresAt ?? _tryExpiry(dto.accessToken);
    await _storage.saveAuthTokens(
      AuthTokens(
        accessToken: dto.accessToken,
        refreshToken: dto.refreshToken,
        accessTokenExpiresAt: expiresAt,
      ),
    );
    return dto.toDomain().copyWith(expiresAt: expiresAt);
  }

  DateTime? _tryExpiry(String token) {
    try {
      return _jwtDecoder.expiry(token);
    } on AppException {
      return null;
    }
  }

  Future<void> _safeClear() async {
    try {
      await _storage.clearAuthTokens();
    } on AppException {
      // The storage layer already logs through its typed exception.
    }
  }
}
