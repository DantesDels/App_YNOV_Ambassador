import 'package:dio/dio.dart';

import 'package:campus_pulse/core/constants/api_endpoints.dart';
import 'package:campus_pulse/core/network/api_data_parser.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_option.dart';
import 'package:campus_pulse/features/ticketing/data/models/checkout_quote_dto.dart';
import 'package:campus_pulse/features/ticketing/data/models/group_hold_dto.dart';
import 'package:campus_pulse/features/ticketing/data/models/ticket_dto.dart';

class TicketingApiDataSource {
  const TicketingApiDataSource(this._dio);

  final Dio _dio;

  Future<CheckoutQuoteDto> createQuote({
    required String eventId,
    required CheckoutOption option,
    String? referrerId,
  }) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.checkoutQuote,
      data: <String, dynamic>{
        'eventId': eventId,
        'option': option.apiValue,
        'seats': option.seats,
        if (referrerId != null && referrerId.isNotEmpty) 'referrerId': referrerId,
      },
      options: Options(extra: <String, dynamic>{'idempotent': true}),
    );
    return CheckoutQuoteDto.fromJson(ApiDataParser.map(response.data));
  }

  Future<TicketDto> confirmPurchase(String quoteId) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.confirmPurchase,
      data: <String, dynamic>{'quoteId': quoteId},
      options: Options(extra: <String, dynamic>{'idempotent': true}),
    );
    return TicketDto.fromJson(ApiDataParser.map(response.data));
  }

  Future<List<TicketDto>> fetchMyTickets() async {
    final Response<dynamic> response = await _dio.get<dynamic>(ApiEndpoints.myTickets);
    return ApiDataParser.list(response.data)
        .map(TicketDto.fromJson)
        .toList(growable: false);
  }

  Future<GroupHoldDto> holdGroupSpots({
    required String eventId,
    required int seats,
  }) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      ApiEndpoints.groupHolds,
      data: <String, dynamic>{'eventId': eventId, 'seats': seats},
      options: Options(extra: <String, dynamic>{'idempotent': true}),
    );
    return GroupHoldDto.fromJson(ApiDataParser.map(response.data));
  }

  Future<void> releaseHold(String holdId) async {
    await _dio.delete<dynamic>(
      ApiEndpoints.releaseHold(holdId),
      options: Options(extra: <String, dynamic>{'idempotent': true}),
    );
  }

  Future<List<int>> exportAppleWalletPass(String ticketId) async {
    final Response<List<int>> response = await _dio.get<List<int>>(
      ApiEndpoints.walletPass(ticketId),
      options: Options(responseType: ResponseType.bytes),
    );
    return response.data ?? const <int>[];
  }

  Future<String> googleWalletSaveUrl(String ticketId) async {
    final Response<dynamic> response = await _dio.get<dynamic>(
      ApiEndpoints.googleWalletSaveUrl(ticketId),
    );
    final Map<String, dynamic> body = ApiDataParser.map(response.data);
    return body['url'] as String? ?? '';
  }
}
