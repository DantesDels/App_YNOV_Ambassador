import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';

/// Fetches the backend-signed `.pkpass` bytes for Apple Wallet.
class ExportAppleWalletPassUseCase {
  const ExportAppleWalletPassUseCase(this._repository);

  final TicketingRepository _repository;

  Future<Result<List<int>>> call(String ticketId) =>
      _repository.exportAppleWalletPass(ticketId);
}

/// Fetches the backend-signed Google Wallet save URL.
class GetGoogleWalletUrlUseCase {
  const GetGoogleWalletUrlUseCase(this._repository);

  final TicketingRepository _repository;

  Future<Result<String>> call(String ticketId) => _repository.googleWalletSaveUrl(ticketId);
}
