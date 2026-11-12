import 'dart:async';

import 'package:dio/dio.dart';

import 'package:campus_pulse/core/constants/api_endpoints.dart';
import 'package:campus_pulse/core/network/api_data_parser.dart';
import 'package:campus_pulse/core/network/socket_client.dart';
import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/data/mappers/social_mapper.dart';
import 'package:campus_pulse/features/social/data/models/activity_item_dto.dart';
import 'package:campus_pulse/features/social/data/models/cascade_invite_dto.dart';
import 'package:campus_pulse/features/social/data/models/friend_dto.dart';

class SocialApiDataSource {
  const SocialApiDataSource(this._dio, this._socketClient);

  final Dio _dio;
  final SocketClient _socketClient;

  Future<List<Friend>> fetchFriends() async {
    final Response<dynamic> response = await _dio.get<dynamic>(ApiEndpoints.friends);
    return ApiDataParser.list(response.data)
        .map((Map<String, dynamic> json) => FriendDto.fromJson(json).toDomain())
        .toList(growable: false);
  }

  Future<Friend> addFriendByQr({required String friendId, required String token}) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.friendsByQr,
      data: <String, dynamic>{'friendId': friendId, 'token': token},
      options: Options(extra: <String, dynamic>{'idempotent': true}),
    );
    return FriendDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }

  Future<List<Friend>> notifyFriends(String eventId) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.notifyFriends(eventId),
      options: Options(extra: <String, dynamic>{'idempotent': true}),
    );
    return ApiDataParser.list(response.data)
        .map((Map<String, dynamic> json) => FriendDto.fromJson(json).toDomain())
        .toList(growable: false);
  }

  Stream<ActivityItem> watchActivity() async* {
    await _socketClient.connect();
    yield* _socketClient.messages
        .where((Map<String, dynamic> message) => message['topic'] == 'social.activity')
        .map((Map<String, dynamic> message) {
          final Object? payload = message['payload'];
          if (payload is Map<String, dynamic>) {
            return ActivityItemDto.fromJson(payload).toDomain();
          }
          return null;
        })
        .where((ActivityItem? item) => item != null)
        .cast<ActivityItem>();
  }

  Future<CascadeInvite> createCascadeInvite(String eventId) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.eventInvite(eventId),
      options: Options(extra: <String, dynamic>{'idempotent': true}),
    );
    return CascadeInviteDto.fromJson(ApiDataParser.map(response.data)).toDomain();
  }
}
