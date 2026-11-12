import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/mock/mock_providers.dart';
import 'package:campus_pulse/core/network/network_providers.dart';
import 'package:campus_pulse/features/profile/domain/profile_repository.dart';
import 'package:campus_pulse/features/profile/data/datasources/profile_api_data_source.dart';
import 'package:campus_pulse/features/profile/data/repositories/mock_profile_repository.dart';
import 'package:campus_pulse/features/profile/data/repositories/profile_repository_impl.dart';

part 'profile_data_providers.g.dart';

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) {
  if (AppConfig.useMockBackend) {
    return MockProfileRepository(ref.watch(mockCampusStoreProvider));
  }
  return ProfileRepositoryImpl(
    ProfileApiDataSource(ref.watch(dioProvider)),
  );
}
