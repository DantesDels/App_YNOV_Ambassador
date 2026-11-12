import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/mock/mock_providers.dart';
import 'package:campus_pulse/core/network/network_providers.dart';
import 'package:campus_pulse/core/security/security_providers.dart';
import 'package:campus_pulse/features/ticketing/domain/payment_gateway.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';
import 'package:campus_pulse/features/ticketing/data/cache/encrypted_ticket_cache.dart';
import 'package:campus_pulse/features/ticketing/data/datasources/ticketing_api_data_source.dart';
import 'package:campus_pulse/features/ticketing/data/repositories/mock_ticketing_repository.dart';
import 'package:campus_pulse/features/ticketing/data/repositories/ticketing_repository_impl.dart';
import 'package:campus_pulse/features/ticketing/data/stripe_payment_gateway.dart';
import 'package:campus_pulse/features/ticketing/data/wallet_export_service.dart';

part 'ticketing_data_providers.g.dart';

@Riverpod(keepAlive: true)
EncryptedTicketCache encryptedTicketCache(Ref ref) {
  return EncryptedTicketCache(ref.watch(secureStorageServiceProvider));
}

@Riverpod(keepAlive: true)
TicketingRepository ticketingRepository(Ref ref) {
  if (AppConfig.useMockBackend) {
    return MockTicketingRepository(ref.watch(mockCampusStoreProvider));
  }
  return TicketingRepositoryImpl(
    dataSource: TicketingApiDataSource(ref.watch(dioProvider)),
    cache: ref.watch(encryptedTicketCacheProvider),
  );
}

@Riverpod(keepAlive: true)
PaymentGateway paymentGateway(Ref ref) {
  if (AppConfig.useMockBackend) {
    return MockPaymentGateway();
  }
  return const StripePaymentGateway();
}

@Riverpod(keepAlive: true)
WalletExportService walletExportService(Ref ref) => const WalletExportService();
