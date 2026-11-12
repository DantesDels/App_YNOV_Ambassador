import 'package:dio/dio.dart';

import 'package:campus_pulse/core/constants/app_config.dart';

/// Exponential-backoff retry for transient failures.
///
/// Only idempotent requests are retried: a POST must explicitly opt in through
/// `Options(extra: {'idempotent': true})`, which prevents double payments.
class RetryInterceptor extends Interceptor {
  RetryInterceptor({
    required this._retryDio,
    this._maxAttempts = AppConfig.maxRetryAttempts,
  });

  final Dio _retryDio;
  final int _maxAttempts;

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final int attempt = (err.requestOptions.extra['retry_attempt'] as int?) ?? 0;
    if (attempt >= _maxAttempts || !_isRetryable(err)) {
      handler.next(err);
      return;
    }

    await Future<void>.delayed(AppConfig.retryBaseDelay * (1 << attempt));

    final RequestOptions options = err.requestOptions;
    options.extra = <String, dynamic>{
      ...options.extra,
      'retry_attempt': attempt + 1,
    };

    try {
      final Response<dynamic> response = await _retryDio.fetch<dynamic>(options);
      handler.resolve(response);
    } on DioException catch (exception) {
      handler.next(exception);
    }
  }

  bool _isRetryable(DioException error) {
    final String method = error.requestOptions.method.toUpperCase();
    final bool idempotent =
        method == 'GET' ||
        method == 'HEAD' ||
        method == 'OPTIONS' ||
        error.requestOptions.extra['idempotent'] == true;
    if (!idempotent || error.requestOptions.extra['disable_retry'] == true) {
      return false;
    }

    final int? status = error.response?.statusCode;
    if (status != null) {
      return status == 502 || status == 503 || status == 504;
    }

    return switch (error.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.connectionError ||
      DioExceptionType.unknown => true,
      DioExceptionType.badCertificate ||
      DioExceptionType.badResponse ||
      DioExceptionType.cancel => false,
      _ => false,
    };
  }
}
