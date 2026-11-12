import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';

class HoldGroupSpotsUseCase {
  const HoldGroupSpotsUseCase(this._repository);

  final TicketingRepository _repository;

  Future<Result<GroupHoldReservation>> call({
    required String eventId,
    required int seats,
  }) {
    if (seats < 1 || seats > AppConfig.maxHeldSeats) {
      return Future<Result<GroupHoldReservation>>.value(
        Failed<GroupHoldReservation>(
          ValidationFailure(
            'Tu peux bloquer entre 1 et ${AppConfig.maxHeldSeats} places.',
          ),
        ),
      );
    }
    return _repository.holdGroupSpots(eventId: eventId, seats: seats);
  }
}
