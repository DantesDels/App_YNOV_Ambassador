import 'dart:async';

import 'package:dio/dio.dart';

import 'package:campus_pulse/core/constants/api_endpoints.dart';
import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/core/security/auth_tokens.dart';
import 'package:campus_pulse/core/security/jwt_decoder.dart';
import 'package:campus_pulse/core/security/secure_storage_service.dart';

/// Attaches the access token, refreshes it transparently on 401 and notifies
/// the app when the refresh token is rejected.
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({
    required this._storage,
    required this._refreshDio,
    required this._jwtDecoder,
    required this._onSessionExpired,
  });

  final SecureStorageService _storage;
  final Dio _refreshDio;
  final JwtDecoder _jwtDecoder;
  final void Function() _onSessionExpired;

  Future<AuthTokens?>? _refreshInFlight;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final AuthTokens? tokens = await _storage.readAuthTokens();
      if (tokens == null) {
        handler.next(options);
        return;
      }

      final AuthTokens effectiveTokens = tokens.isAccessTokenValid
          ? tokens
          : (await _refresh(tokens) ?? tokens);

      if (!effectiveTokens.isAccessTokenValid) {
        _onSessionExpired();
        handler.reject(
          DioException(
            requestOptions: options,
            response: Response<dynamic>(requestOptions: options, statusCode: 401),
            type: DioExceptionType.badResponse,
          ),
        );
        return;
      }
      options.headers['Authorization'] = 'Bearer ${effectiveTokens.accessToken}';
      handler.next(options);
    } on AppException {
      handler.next(options);
    }
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final bool isUnauthorized = err.response?.statusCode == 401;
    final bool alreadyRetried = err.requestOptions.extra['auth_retried'] == true;
    if (!isUnauthorized || alreadyRetried) {
      handler.next(err);
      return;
    }

    final AuthTokens? tokens = await _storage.readAuthTokens();
    if (tokens == null) {
      _onSessionExpired();
      handler.next(err);
      return;
    }

    final AuthTokens? refreshed = await _refresh(tokens);
    if (refreshed == null) {
      handler.next(err);
      return;
    }

    final RequestOptions retryOptions = err.requestOptions;
    retryOptions
      ..headers['Authorization'] = 'Bearer ${refreshed.accessToken}'
      ..extra = <String, dynamic>{...retryOptions.extra, 'auth_retried': true};

    try {
      final Response<dynamic> response = await _refreshDio.fetch<dynamic>(retryOptions);
      handler.resolve(response);
    } on DioException catch (exception) {
      handler.next(exception);
    }
  }

  Future<AuthTokens?> _refresh(AuthTokens tokens) {
    final Future<AuthTokens?>? inFlight = _refreshInFlight;
    if (inFlight != null) {
      return inFlight;
    }
    final Future<AuthTokens?> future = _performRefresh(tokens);
    _refreshInFlight = future;
    return future.whenComplete(() => _refreshInFlight = null);
  }

  Future<AuthTokens?> _performRefresh(AuthTokens tokens) async {
    try {
      final Response<dynamic> response = await _refreshDio.post<dynamic>(
        ApiEndpoints.refreshToken,
        data: <String, dynamic>{'refreshToken': tokens.refreshToken},
        options: Options(extra: <String, dynamic>{'idempotent': true}),
      );
      final Map<String, dynamic> body = _asMap(response.data);
      final String? accessToken = body['accessToken'] as String?;
      final String? refreshToken = body['refreshToken'] as String?;
      if (accessToken == null || refreshToken == null) {
        await _expireSession();
        return null;
      }
      final AuthTokens renewed = AuthTokens(
        accessToken: accessToken,
        refreshToken: refreshToken,
        accessTokenExpiresAt: _safeExpiry(accessToken),
      );
      await _storage.saveAuthTokens(renewed);
      return renewed;
    } on DioException catch (error) {
      final int? status = error.response?.statusCode;
      if (status == 400 || status == 401 || status == 403 || status == 422) {
        await _expireSession();
      }
      return null;
    } on AppException {
      return null;
    }
  }

  Future<void> _expireSession() async {
    await _storage.clearAuthTokens();
    _onSessionExpired();
  }

  DateTime? _safeExpiry(String accessToken) {
    try {
      return _jwtDecoder.expiry(accessToken);
    } on AppException {
      return null;
    }
  }

  Map<String, dynamic> _asMap(Object? data) {
    if (data is Map<String, dynamic>) {
      return data;
    }
    if (data is Map<dynamic, dynamic>) {
      return data.map((dynamic key, dynamic value) => MapEntry<String, dynamic>('$key', value));
    }
    return const <String, dynamic>{};
  }
}
