import 'package:freezed_annotation/freezed_annotation.dart';

import 'hold_payment_link_dto.dart';

part 'group_hold_dto.freezed.dart';
part 'group_hold_dto.g.dart';

@freezed
abstract class GroupHoldDto with _$GroupHoldDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GroupHoldDto({
    required String id,
    required String eventId,
    required String eventTitle,
    required int seats,
    required DateTime expiresAt,
    required List<HoldPaymentLinkDto> paymentLinks,
    required String currency,
    required int unitAmountCents,
  }) = _GroupHoldDto;

  factory GroupHoldDto.fromJson(Map<String, dynamic> json) => _$GroupHoldDtoFromJson(json);
}
