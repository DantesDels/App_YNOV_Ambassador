import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_capacity.freezed.dart';

/// Server-authoritative seat state.
///
/// Seat holds count as taken: the client never estimates availability, it only
/// renders what the capacity endpoint (or the realtime channel) reports.
@freezed
abstract class EventCapacity with _$EventCapacity {
  const factory EventCapacity({
    required int totalSeats,
    required int seatsTaken,
    @Default(0) int heldSeats,
    DateTime? updatedAt,
  }) = _EventCapacity;

  const EventCapacity._();

  int get remainingSeats {
    final int remaining = totalSeats - seatsTaken - heldSeats;
    return remaining < 0 ? 0 : remaining;
  }

  double get fillRatio {
    if (totalSeats <= 0) {
      return 0;
    }
    final double ratio = (seatsTaken + heldSeats) / totalSeats;
    return ratio.clamp(0, 1).toDouble();
  }

  int get fillPercent => (fillRatio * 100).round();

  bool get isSoldOut => remainingSeats <= 0;

  bool get isAlmostFull => !isSoldOut && fillRatio >= 0.8;

  bool get isFillingFast => !isSoldOut && fillRatio >= 0.55;
}
