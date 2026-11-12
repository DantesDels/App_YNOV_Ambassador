import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'certificate_pinning.dart';

/// Creates hardened Dio instances.
///
/// Secrets never appear here: the base URL, Stripe publishable key and pins all
/// come from `--dart-define` through [AppConfig].
abstract final class DioFactory {
  static Dio create({required String baseUrl, required CertificatePinning pinning}) {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: AppConfig.connectTimeout,
        sendTimeout: AppConfig.requestTimeout,
        receiveTimeout: AppConfig.requestTimeout,
        responseType: ResponseType.json,
        headers: const <String, String>{'Accept': 'application/json'},
        validateStatus: (int? status) => status != null && status >= 200 && status < 300,
      ),
    );

    if (pinning.isEnabled) {
      dio.httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: pinning.createClient,
      );
    }
    return dio;
  }

  static void close(Dio dio) {
    dio.close(force: true);
  }

  static bool get supportsPlatformPinning => Platform.isAndroid || Platform.isIOS;
}
