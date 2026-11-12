import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_option.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/domain/ticketing_repository.dart';
import 'package:campus_pulse/features/ticketing/data/cache/encrypted_ticket_cache.dart';
import 'package:campus_pulse/features/ticketing/data/datasources/ticketing_api_data_source.dart';
import 'package:campus_pulse/features/ticketing/data/mappers/ticketing_mapper.dart';
import 'package:campus_pulse/features/ticketing/data/models/checkout_quote_dto.dart';
import 'package:campus_pulse/features/ticketing/data/models/group_hold_dto.dart';
import 'package:campus_pulse/features/ticketing/data/models/ticket_dto.dart';

class TicketingRepositoryImpl implements TicketingRepository {
  const TicketingRepositoryImpl({
    required this._dataSource,
    required this._cache,
  });

  final TicketingApiDataSource _dataSource;
  final EncryptedTicketCache _cache;

  @override
  Future<Result<CheckoutQuote>> createQuote({
    required String eventId,
    required CheckoutOption option,
    String? referrerId,
  }) async {
    try {
      final CheckoutQuoteDto dto = await _dataSource.createQuote(
        eventId: eventId,
        option: option,
        referrerId: referrerId,
      );
      return Success<CheckoutQuote>(dto.toDomain());
    } on Object catch (error) {
      return Failed<CheckoutQuote>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<Ticket>> confirmPurchase(String quoteId) async {
    try {
      final TicketDto dto = await _dataSource.confirmPurchase(quoteId);
      await _cacheBestEffort(dto);
      return Success<Ticket>(dto.toDomain());
    } on Object catch (error) {
      return Failed<Ticket>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<List<Ticket>>> fetchMyTickets() async {
    try {
      final List<TicketDto> dtos = await _dataSource.fetchMyTickets();
      await _cache.saveAll(dtos);
      return Success<List<Ticket>>(
        dtos.map((TicketDto dto) => dto.toDomain()).toList(growable: false),
      );
    } on Object catch (error) {
      final Failure failure = FailureMapper.from(error);
      if (failure is NetworkFailure || failure is ServerFailure) {
        final List<Ticket> cached = await _cachedTickets();
        if (cached.isNotEmpty) {
          return Success<List<Ticket>>(cached);
        }
      }
      return Failed<List<Ticket>>(failure);
    }
  }

  @override
  Future<Result<GroupHoldReservation>> holdGroupSpots({
    required String eventId,
    required int seats,
  }) async {
    try {
      final GroupHoldDto dto = await _dataSource.holdGroupSpots(
        eventId: eventId,
        seats: seats,
      );
      return Success<GroupHoldReservation>(dto.toDomain());
    } on Object catch (error) {
      return Failed<GroupHoldReservation>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<void>> releaseHold(String holdId) async {
    try {
      await _dataSource.releaseHold(holdId);
      return const Success<void>(null);
    } on Object catch (error) {
      return Failed<void>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<List<int>>> exportAppleWalletPass(String ticketId) async {
    try {
      return Success<List<int>>(await _dataSource.exportAppleWalletPass(ticketId));
    } on Object catch (error) {
      return Failed<List<int>>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<String>> googleWalletSaveUrl(String ticketId) async {
    try {
      return Success<String>(await _dataSource.googleWalletSaveUrl(ticketId));
    } on Object catch (error) {
      return Failed<String>(FailureMapper.from(error));
    }
  }

  Future<void> _cacheBestEffort(TicketDto ticket) async {
    try {
      await _cache.upsert(ticket);
    } on Object {
      // A successful payment must never be reported as failed because the local
      // wallet could not be updated. The next fetch will repair the cache.
    }
  }

  Future<List<Ticket>> _cachedTickets() async {
    try {
      return await _cache.read();
    } on Object {
      return const <Ticket>[];
    }
  }
}
