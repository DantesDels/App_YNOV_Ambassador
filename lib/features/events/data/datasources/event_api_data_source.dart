import 'dart:async';

import 'package:dio/dio.dart';

import 'package:campus_pulse/core/constants/api_endpoints.dart';
import 'package:campus_pulse/core/network/api_data_parser.dart';
import 'package:campus_pulse/core/network/socket_client.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';
import 'package:campus_pulse/features/events/domain/event_filter.dart';
import 'package:campus_pulse/features/events/data/mappers/event_mapper.dart';
import 'package:campus_pulse/features/events/data/models/event_capacity_dto.dart';
import 'package:campus_pulse/features/events/data/models/event_dto.dart';

class EventApiDataSource {
  const EventApiDataSource(this._dio, this._socketClient);

  final Dio _dio;
  final SocketClient _socketClient;

  Future<List<Event>> fetchEvents({EventFilter filter = const EventFilter()}) async {
    final Response<dynamic> response = await _dio.get<dynamic>(
      ApiEndpoints.events,
      queryParameters: <String, dynamic>{
        if (filter.category != EventCategory.all) 'category': filter.category.apiValue,
        if (filter.organizer != null) 'organizer': filter.organizer!.apiValue,
        if (filter.query.trim().isNotEmpty) 'q': filter.query.trim(),
        if (filter.onlyAvailable) 'available': true,
        'sort': filter.sort.name,
      },
    );
    return ApiDataParser.list(response.data)
        .map((Map<String, dynamic> json) => EventDto.fromJson(json).toDomain())
        .toList(growable: false);
  }

  Future<Event> fetchEvent(String eventId) async {
    final Response<dynamic> response = await _dio.get<dynamic>(ApiEndpoints.event(eventId));
    return EventDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }

  Stream<EventCapacity> watchCapacity(String eventId) async* {
    final Response<dynamic> initial = await _dio.get<dynamic>(
      ApiEndpoints.eventCapacity(eventId),
    );
    yield EventCapacityDto.fromJson(ApiDataParser.map(initial.data)).toDomain();

    await _socketClient.connect();
    yield* _socketClient.messages
        .where(
          (Map<String, dynamic> message) =>
              message['topic'] == 'event.capacity' && message['eventId'] == eventId,
        )
        .map((Map<String, dynamic> message) {
          final Object? payload = message['payload'];
          if (payload is Map<String, dynamic>) {
            return EventCapacityDto.fromJson(payload).toDomain();
          }
          return null;
        })
        .where((EventCapacity? capacity) => capacity != null)
        .cast<EventCapacity>();
  }

  Future<void> setPresenceVisibility({
    required String eventId,
    required bool isVisible,
  }) async {
    await _dio.patch<dynamic>(
      ApiEndpoints.eventAttendance(eventId),
      data: <String, dynamic>{'visible': isVisible},
    );
  }
}
