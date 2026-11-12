import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/mock/mock_providers.dart';
import 'package:campus_pulse/core/network/network_providers.dart';
import 'package:campus_pulse/features/events/domain/event_repository.dart';
import 'package:campus_pulse/features/events/data/datasources/event_api_data_source.dart';
import 'package:campus_pulse/features/events/data/repositories/event_repository_impl.dart';
import 'package:campus_pulse/features/events/data/repositories/mock_event_repository.dart';

part 'event_data_providers.g.dart';

@Riverpod(keepAlive: true)
EventRepository eventRepository(Ref ref) {
  if (AppConfig.useMockBackend) {
    return MockEventRepository(ref.watch(mockCampusStoreProvider));
  }
  return EventRepositoryImpl(
    EventApiDataSource(ref.watch(dioProvider), ref.watch(socketClientProvider)),
  );
}
