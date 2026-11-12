import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

@freezed
abstract class TicketDto with _$TicketDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TicketDto({
    required String id,
    required String eventId,
    required String eventTitle,
    required DateTime eventStartsAt,
    required String venueName,
    required String organizerName,
    required String organizer,
    required String holderName,
    required String qrPayload,
    required String shortCode,
    required String status,
    required DateTime purchasedAt,
    required int amountPaidCents,
    required String currency,
    String? seatLabel,
    String? squadId,
  }) = _TicketDto;

  factory TicketDto.fromJson(Map<String, dynamic> json) => _$TicketDtoFromJson(json);
}
