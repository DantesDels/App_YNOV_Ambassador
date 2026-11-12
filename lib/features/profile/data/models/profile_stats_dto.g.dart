// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileStatsDto _$ProfileStatsDtoFromJson(Map<String, dynamic> json) =>
    _ProfileStatsDto(
      ticketsCount: (json['tickets_count'] as num?)?.toInt() ?? 0,
      eventsAttended: (json['events_attended'] as num?)?.toInt() ?? 0,
      friendsCount: (json['friends_count'] as num?)?.toInt() ?? 0,
      squadsJoined: (json['squads_joined'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ProfileStatsDtoToJson(_ProfileStatsDto instance) =>
    <String, dynamic>{
      'tickets_count': instance.ticketsCount,
      'events_attended': instance.eventsAttended,
      'friends_count': instance.friendsCount,
      'squads_joined': instance.squadsJoined,
    };
