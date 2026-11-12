import 'package:freezed_annotation/freezed_annotation.dart';

part 'hold_payment_link_dto.freezed.dart';
part 'hold_payment_link_dto.g.dart';

@freezed
abstract class HoldPaymentLinkDto with _$HoldPaymentLinkDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HoldPaymentLinkDto({
    required String id,
    required String url,
    required String label,
    DateTime? claimedAt,
  }) = _HoldPaymentLinkDto;

  factory HoldPaymentLinkDto.fromJson(Map<String, dynamic> json) =>
      _$HoldPaymentLinkDtoFromJson(json);
}
