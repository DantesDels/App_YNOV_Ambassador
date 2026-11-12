import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/mock/mock_providers.dart';
import 'package:campus_pulse/core/network/network_providers.dart';
import 'package:campus_pulse/core/security/security_providers.dart';
import 'package:campus_pulse/features/auth/domain/auth_repository.dart';
import 'package:campus_pulse/features/auth/data/datasources/auth_api_data_source.dart';
import 'package:campus_pulse/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:campus_pulse/features/auth/data/repositories/mock_auth_repository.dart';

part 'auth_data_providers.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  if (AppConfig.useMockBackend) {
    return MockAuthRepository(ref.watch(mockCampusStoreProvider));
  }
  return AuthRepositoryImpl(
    dataSource: AuthApiDataSource(ref.watch(dioProvider)),
    storage: ref.watch(secureStorageServiceProvider),
    jwtDecoder: ref.watch(jwtDecoderProvider),
  );
}
