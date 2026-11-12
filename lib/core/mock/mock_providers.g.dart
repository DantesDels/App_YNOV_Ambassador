// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mockCampusStore)
final mockCampusStoreProvider = MockCampusStoreProvider._();

final class MockCampusStoreProvider
    extends
        $FunctionalProvider<MockCampusStore, MockCampusStore, MockCampusStore>
    with $Provider<MockCampusStore> {
  MockCampusStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockCampusStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockCampusStoreHash();

  @$internal
  @override
  $ProviderElement<MockCampusStore> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MockCampusStore create(Ref ref) {
    return mockCampusStore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MockCampusStore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MockCampusStore>(value),
    );
  }
}

String _$mockCampusStoreHash() => r'8a989af54476ae615a9fdeba8ddcbd5bc8dec45f';
