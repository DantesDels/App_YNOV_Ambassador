import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';

class ReleaseHoldUseCase {
  const ReleaseHoldUseCase(this._repository);

  final TicketingRepository _repository;

  Future<Result<void>> call(String holdId) => _repository.releaseHold(holdId);
}
