import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_tier_dto.freezed.dart';
part 'pricing_tier_dto.g.dart';

@freezed
abstract class PricingTierDto with _$PricingTierDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PricingTierDto({
    required String id,
    required String kind,
    required String label,
    required int priceCents,
    required String currency,
    int? remainingSeats,
  }) = _PricingTierDto;

  factory PricingTierDto.fromJson(Map<String, dynamic> json) =>
      _$PricingTierDtoFromJson(json);
}
