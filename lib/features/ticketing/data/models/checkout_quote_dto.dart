import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_quote_dto.freezed.dart';
part 'checkout_quote_dto.g.dart';

@freezed
abstract class CheckoutQuoteDto with _$CheckoutQuoteDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CheckoutQuoteDto({
    required String id,
    required String eventId,
    required String paymentIntentClientSecret,
    required int amountCents,
    required String currency,
    required String label,
    required int seats,
    required DateTime expiresAt,
  }) = _CheckoutQuoteDto;

  factory CheckoutQuoteDto.fromJson(Map<String, dynamic> json) =>
      _$CheckoutQuoteDtoFromJson(json);
}
