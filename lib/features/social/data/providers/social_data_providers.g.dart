// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(socialRepository)
final socialRepositoryProvider = SocialRepositoryProvider._();

final class SocialRepositoryProvider
    extends
        $FunctionalProvider<
          SocialRepository,
          SocialRepository,
          SocialRepository
        >
    with $Provider<SocialRepository> {
  SocialRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'socialRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$socialRepositoryHash();

  @$internal
  @override
  $ProviderElement<SocialRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SocialRepository create(Ref ref) {
    return socialRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SocialRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SocialRepository>(value),
    );
  }
}

String _$socialRepositoryHash() => r'6f756edff80e975588b8374f0f6b699dce54f74f';

@ProviderFor(inviteSharingService)
final inviteSharingServiceProvider = InviteSharingServiceProvider._();

final class InviteSharingServiceProvider
    extends
        $FunctionalProvider<
          InviteSharingService,
          InviteSharingService,
          InviteSharingService
        >
    with $Provider<InviteSharingService> {
  InviteSharingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inviteSharingServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inviteSharingServiceHash();

  @$internal
  @override
  $ProviderElement<InviteSharingService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InviteSharingService create(Ref ref) {
    return inviteSharingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InviteSharingService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InviteSharingService>(value),
    );
  }
}

String _$inviteSharingServiceHash() =>
    r'a2fa046588ef4836ffd22dabfd33d8c8278cc7be';
