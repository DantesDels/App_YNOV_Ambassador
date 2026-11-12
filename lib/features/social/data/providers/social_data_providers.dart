import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/mock/mock_providers.dart';
import 'package:campus_pulse/core/network/network_providers.dart';
import 'package:campus_pulse/features/social/domain/invite_sharing_service.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';
import 'package:campus_pulse/features/social/data/datasources/social_api_data_source.dart';
import 'package:campus_pulse/features/social/data/repositories/mock_social_repository.dart';
import 'package:campus_pulse/features/social/data/repositories/social_repository_impl.dart';
import 'package:campus_pulse/features/social/data/share_plus_invite_sharing_service.dart';

part 'social_data_providers.g.dart';

@Riverpod(keepAlive: true)
SocialRepository socialRepository(Ref ref) {
  if (AppConfig.useMockBackend) {
    return MockSocialRepository(ref.watch(mockCampusStoreProvider));
  }
  return SocialRepositoryImpl(
    SocialApiDataSource(ref.watch(dioProvider), ref.watch(socketClientProvider)),
  );
}

@Riverpod(keepAlive: true)
InviteSharingService inviteSharingService(Ref ref) =>
    const SharePlusInviteSharingService();
