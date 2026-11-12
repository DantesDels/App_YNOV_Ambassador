// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(certificatePinning)
final certificatePinningProvider = CertificatePinningProvider._();

final class CertificatePinningProvider
    extends
        $FunctionalProvider<
          CertificatePinning,
          CertificatePinning,
          CertificatePinning
        >
    with $Provider<CertificatePinning> {
  CertificatePinningProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'certificatePinningProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$certificatePinningHash();

  @$internal
  @override
  $ProviderElement<CertificatePinning> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CertificatePinning create(Ref ref) {
    return certificatePinning(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CertificatePinning value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CertificatePinning>(value),
    );
  }
}

String _$certificatePinningHash() =>
    r'4e50fcc5eef96f81ffc0208ccd8f24edeb9c8d46';

/// Bare Dio used for token refresh and public endpoints.

@ProviderFor(refreshDio)
final refreshDioProvider = RefreshDioProvider._();

/// Bare Dio used for token refresh and public endpoints.

final class RefreshDioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  /// Bare Dio used for token refresh and public endpoints.
  RefreshDioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshDioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshDioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return refreshDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$refreshDioHash() => r'b622ecdb9d6aa28097921bf34e013d99394facf4';

/// Application Dio: retry + JWT + refresh.

@ProviderFor(dio)
final dioProvider = DioProvider._();

/// Application Dio: retry + JWT + refresh.

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  /// Application Dio: retry + JWT + refresh.
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'fd10d273ed484205e4ba74a10fbb6a82b10d8cd4';

@ProviderFor(socketClient)
final socketClientProvider = SocketClientProvider._();

final class SocketClientProvider
    extends $FunctionalProvider<SocketClient, SocketClient, SocketClient>
    with $Provider<SocketClient> {
  SocketClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'socketClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$socketClientHash();

  @$internal
  @override
  $ProviderElement<SocketClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SocketClient create(Ref ref) {
    return socketClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SocketClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SocketClient>(value),
    );
  }
}

String _$socketClientHash() => r'4134ba847514337316dd285ce17f040d9d46d49e';
