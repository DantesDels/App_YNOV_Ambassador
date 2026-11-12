import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';

part 'group_hold_state.freezed.dart';

@freezed
abstract class GroupHoldState with _$GroupHoldState {
  const factory GroupHoldState({
    @Default(false) bool isSubmitting,
    @Default(1) int seats,
    GroupHoldReservation? reservation,
    String? errorMessage,
  }) = _GroupHoldState;

  const GroupHoldState._();

  bool get hasHold => reservation != null;
}
