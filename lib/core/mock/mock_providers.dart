import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'mock_campus_store.dart';

part 'mock_providers.g.dart';

@Riverpod(keepAlive: true)
MockCampusStore mockCampusStore(Ref ref) => MockCampusStore.instance;
