import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_stats_dto.freezed.dart';
part 'profile_stats_dto.g.dart';

@freezed
abstract class ProfileStatsDto with _$ProfileStatsDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProfileStatsDto({
    @Default(0) int ticketsCount,
    @Default(0) int eventsAttended,
    @Default(0) int friendsCount,
    @Default(0) int squadsJoined,
  }) = _ProfileStatsDto;

  factory ProfileStatsDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileStatsDtoFromJson(json);
}
