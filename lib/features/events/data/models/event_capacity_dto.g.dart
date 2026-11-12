// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_capacity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventCapacityDto _$EventCapacityDtoFromJson(Map<String, dynamic> json) =>
    _EventCapacityDto(
      totalSeats: (json['total_seats'] as num).toInt(),
      seatsTaken: (json['seats_taken'] as num).toInt(),
      heldSeats: (json['held_seats'] as num?)?.toInt() ?? 0,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$EventCapacityDtoToJson(_EventCapacityDto instance) =>
    <String, dynamic>{
      'total_seats': instance.totalSeats,
      'seats_taken': instance.seatsTaken,
      'held_seats': instance.heldSeats,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
