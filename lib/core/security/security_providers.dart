import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'biometric_guard.dart';
import 'jwt_decoder.dart';
import 'secure_storage_service.dart';
import 'session_event_bus.dart';

part 'security_providers.g.dart';

@Riverpod(keepAlive: true)
FlutterSecureStorage flutterSecureStorage(Ref ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(
      // KeyStore-wrapped AES-GCM, no plaintext fallback.
      storageCipherAlgorithm: StorageCipherAlgorithm.AES_GCM_NoPadding,
      keyCipherAlgorithm: KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding,
      resetOnError: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
      synchronizable: false,
    ),
  );
}

@Riverpod(keepAlive: true)
SecureStorageService secureStorageService(Ref ref) {
  return SecureStorageService(ref.watch(flutterSecureStorageProvider));
}

@Riverpod(keepAlive: true)
JwtDecoder jwtDecoder(Ref ref) => const JwtDecoder();

@Riverpod(keepAlive: true)
BiometricGuard biometricGuard(Ref ref) => BiometricGuard(LocalAuthentication());

@Riverpod(keepAlive: true)
SessionEventBus sessionEventBus(Ref ref) {
  final SessionEventBus bus = SessionEventBus();
  ref.onDispose(bus.dispose);
  return bus;
}
