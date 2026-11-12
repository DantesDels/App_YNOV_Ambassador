import 'package:freezed_annotation/freezed_annotation.dart';

part 'cascade_invite_dto.freezed.dart';
part 'cascade_invite_dto.g.dart';

@freezed
abstract class CascadeInviteDto with _$CascadeInviteDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CascadeInviteDto({
    required String eventId,
    required String eventTitle,
    required String referrerId,
    required String shareUrl,
    required String shareMessage,
    DateTime? expiresAt,
    @Default(3) int squadSeats,
    @Default(0) int invitedCount,
    @Default(false) bool squadDiscountUnlocked,
    String? discountLabel,
  }) = _CascadeInviteDto;

  factory CascadeInviteDto.fromJson(Map<String, dynamic> json) =>
      _$CascadeInviteDtoFromJson(json);
}
