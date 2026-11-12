import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';

class GetMyTicketsUseCase {
  const GetMyTicketsUseCase(this._repository);

  final TicketingRepository _repository;

  Future<Result<List<Ticket>>> call() => _repository.fetchMyTickets();
}
