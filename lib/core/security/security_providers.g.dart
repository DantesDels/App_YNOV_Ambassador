// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(flutterSecureStorage)
final flutterSecureStorageProvider = FlutterSecureStorageProvider._();

final class FlutterSecureStorageProvider
    extends
        $FunctionalProvider<
          FlutterSecureStorage,
          FlutterSecureStorage,
          FlutterSecureStorage
        >
    with $Provider<FlutterSecureStorage> {
  FlutterSecureStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'flutterSecureStorageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$flutterSecureStorageHash();

  @$internal
  @override
  $ProviderElement<FlutterSecureStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FlutterSecureStorage create(Ref ref) {
    return flutterSecureStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FlutterSecureStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FlutterSecureStorage>(value),
    );
  }
}

String _$flutterSecureStorageHash() =>
    r'2c1a4c8eab069081340581babfe0f0d0e4b607a9';

@ProviderFor(secureStorageService)
final secureStorageServiceProvider = SecureStorageServiceProvider._();

final class SecureStorageServiceProvider
    extends
        $FunctionalProvider<
          SecureStorageService,
          SecureStorageService,
          SecureStorageService
        >
    with $Provider<SecureStorageService> {
  SecureStorageServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureStorageServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureStorageServiceHash();

  @$internal
  @override
  $ProviderElement<SecureStorageService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SecureStorageService create(Ref ref) {
    return secureStorageService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SecureStorageService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SecureStorageService>(value),
    );
  }
}

String _$secureStorageServiceHash() =>
    r'26d0dbe3121edf343e351fa42fa268d859543f78';

@ProviderFor(jwtDecoder)
final jwtDecoderProvider = JwtDecoderProvider._();

final class JwtDecoderProvider
    extends $FunctionalProvider<JwtDecoder, JwtDecoder, JwtDecoder>
    with $Provider<JwtDecoder> {
  JwtDecoderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'jwtDecoderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$jwtDecoderHash();

  @$internal
  @override
  $ProviderElement<JwtDecoder> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JwtDecoder create(Ref ref) {
    return jwtDecoder(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JwtDecoder value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JwtDecoder>(value),
    );
  }
}

String _$jwtDecoderHash() => r'6af25a3ae1aa088a2125161ca38426ef8b03b71d';

@ProviderFor(biometricGuard)
final biometricGuardProvider = BiometricGuardProvider._();

final class BiometricGuardProvider
    extends $FunctionalProvider<BiometricGuard, BiometricGuard, BiometricGuard>
    with $Provider<BiometricGuard> {
  BiometricGuardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'biometricGuardProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$biometricGuardHash();

  @$internal
  @override
  $ProviderElement<BiometricGuard> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BiometricGuard create(Ref ref) {
    return biometricGuard(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BiometricGuard value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BiometricGuard>(value),
    );
  }
}

String _$biometricGuardHash() => r'51c2cc8e60a165d3c1bad7ab002cc68c62fe9303';

@ProviderFor(sessionEventBus)
final sessionEventBusProvider = SessionEventBusProvider._();

final class SessionEventBusProvider
    extends
        $FunctionalProvider<SessionEventBus, SessionEventBus, SessionEventBus>
    with $Provider<SessionEventBus> {
  SessionEventBusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionEventBusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionEventBusHash();

  @$internal
  @override
  $ProviderElement<SessionEventBus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SessionEventBus create(Ref ref) {
    return sessionEventBus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SessionEventBus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SessionEventBus>(value),
    );
  }
}

String _$sessionEventBusHash() => r'4df5e0e56acbe02702ed088f4a3dac970b88bbb7';
