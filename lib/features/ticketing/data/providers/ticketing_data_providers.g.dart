// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(encryptedTicketCache)
final encryptedTicketCacheProvider = EncryptedTicketCacheProvider._();

final class EncryptedTicketCacheProvider
    extends
        $FunctionalProvider<
          EncryptedTicketCache,
          EncryptedTicketCache,
          EncryptedTicketCache
        >
    with $Provider<EncryptedTicketCache> {
  EncryptedTicketCacheProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'encryptedTicketCacheProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$encryptedTicketCacheHash();

  @$internal
  @override
  $ProviderElement<EncryptedTicketCache> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EncryptedTicketCache create(Ref ref) {
    return encryptedTicketCache(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EncryptedTicketCache value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EncryptedTicketCache>(value),
    );
  }
}

String _$encryptedTicketCacheHash() =>
    r'5fdc40b88ef554ec3b38b54dcc2e532424a42b5d';

@ProviderFor(ticketingRepository)
final ticketingRepositoryProvider = TicketingRepositoryProvider._();

final class TicketingRepositoryProvider
    extends
        $FunctionalProvider<
          TicketingRepository,
          TicketingRepository,
          TicketingRepository
        >
    with $Provider<TicketingRepository> {
  TicketingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketingRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketingRepositoryHash();

  @$internal
  @override
  $ProviderElement<TicketingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TicketingRepository create(Ref ref) {
    return ticketingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TicketingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TicketingRepository>(value),
    );
  }
}

String _$ticketingRepositoryHash() =>
    r'0cf46390aeeab3cbbe340fba8b65377f8006813d';

@ProviderFor(paymentGateway)
final paymentGatewayProvider = PaymentGatewayProvider._();

final class PaymentGatewayProvider
    extends $FunctionalProvider<PaymentGateway, PaymentGateway, PaymentGateway>
    with $Provider<PaymentGateway> {
  PaymentGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentGatewayProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentGatewayHash();

  @$internal
  @override
  $ProviderElement<PaymentGateway> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PaymentGateway create(Ref ref) {
    return paymentGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentGateway>(value),
    );
  }
}

String _$paymentGatewayHash() => r'0ca2ae7957d65fb38c9d64346294b5d7a22bbc32';

@ProviderFor(walletExportService)
final walletExportServiceProvider = WalletExportServiceProvider._();

final class WalletExportServiceProvider
    extends
        $FunctionalProvider<
          WalletExportService,
          WalletExportService,
          WalletExportService
        >
    with $Provider<WalletExportService> {
  WalletExportServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'walletExportServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$walletExportServiceHash();

  @$internal
  @override
  $ProviderElement<WalletExportService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WalletExportService create(Ref ref) {
    return walletExportService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WalletExportService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WalletExportService>(value),
    );
  }
}

String _$walletExportServiceHash() =>
    r'e9e9fcf524e5a0337628f08b70be672238c467eb';
