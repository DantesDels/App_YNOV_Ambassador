import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/security/security_providers.dart';
import 'auth_interceptor.dart';
import 'certificate_pinning.dart';
import 'dio_factory.dart';
import 'retry_interceptor.dart';
import 'socket_client.dart';

part 'network_providers.g.dart';

@Riverpod(keepAlive: true)
CertificatePinning certificatePinning(Ref ref) {
  return CertificatePinning(
    pins: AppConfig.enableCertificatePinning ? AppConfig.certificatePins : const <String>[],
  );
}

/// Bare Dio used for token refresh and public endpoints.
@Riverpod(keepAlive: true)
Dio refreshDio(Ref ref) {
  final Dio dio = DioFactory.create(
    baseUrl: AppConfig.apiBaseUrl,
    pinning: ref.watch(certificatePinningProvider),
  );
  ref.onDispose(() => DioFactory.close(dio));
  return dio;
}

/// Application Dio: retry + JWT + refresh.
@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final Dio client = DioFactory.create(
    baseUrl: AppConfig.apiBaseUrl,
    pinning: ref.watch(certificatePinningProvider),
  );
  client.interceptors.addAll(<Interceptor>[
    RetryInterceptor(retryDio: client),
    AuthInterceptor(
      storage: ref.watch(secureStorageServiceProvider),
      refreshDio: ref.watch(refreshDioProvider),
      jwtDecoder: ref.watch(jwtDecoderProvider),
      onSessionExpired: () => ref.read(sessionEventBusProvider).emitSessionExpired(),
    ),
  ]);
  ref.onDispose(() => DioFactory.close(client));
  return client;
}

@Riverpod(keepAlive: true)
SocketClient socketClient(Ref ref) {
  final SocketClient client = SocketClient(
    baseUrl: AppConfig.socketBaseUrl,
    accessTokenProvider: () async {
      final tokens = await ref.read(secureStorageServiceProvider).readAuthTokens();
      return tokens?.accessToken;
    },
  );
  ref.onDispose(client.dispose);
  return client;
}
