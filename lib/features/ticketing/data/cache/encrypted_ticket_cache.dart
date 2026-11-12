import 'package:campus_pulse/core/security/secure_storage_service.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/data/mappers/ticketing_mapper.dart';
import 'package:campus_pulse/features/ticketing/data/models/ticket_dto.dart';

/// Offline wallet persistence.
///
/// The cache lives in Android Keystore-encrypted storage / the iOS Keychain. It
/// stores the backend-signed payloads verbatim so a ticket remains scannable at
/// the door without any network connection.
class EncryptedTicketCache {
  const EncryptedTicketCache(this._storage);

  final SecureStorageService _storage;

  Future<void> saveAll(List<TicketDto> tickets) async {
    await _storage.saveOfflineTickets(
      tickets.map((TicketDto ticket) => ticket.toJson()).toList(growable: false),
    );
  }

  Future<void> upsert(TicketDto ticket) async {
    final List<Ticket> current = await read();
    final List<TicketDto> merged = <TicketDto>[
      ticket,
      ...current
          .where((Ticket existing) => existing.id != ticket.id)
          .map(_toDto),
    ];
    await saveAll(merged);
  }

  Future<List<Ticket>> read() async {
    final List<Map<String, dynamic>> raw = await _storage.readOfflineTickets();
    return raw
        .map((Map<String, dynamic> json) => TicketDto.fromJson(json).toDomain())
        .toList(growable: false);
  }

  Future<void> clear() async {
    await _storage.saveOfflineTickets(const <Map<String, dynamic>>[]);
  }

  static TicketDto _toDto(Ticket ticket) {
    return TicketDto(
      id: ticket.id,
      eventId: ticket.eventId,
      eventTitle: ticket.eventTitle,
      eventStartsAt: ticket.eventStartsAt,
      venueName: ticket.venueName,
      organizerName: ticket.organizerName,
      organizer: ticket.organizer.apiValue,
      holderName: ticket.holderName,
      qrPayload: ticket.qrPayload,
      shortCode: ticket.shortCode,
      status: ticket.status.name,
      purchasedAt: ticket.purchasedAt,
      amountPaidCents: ticket.amountPaidCents,
      currency: ticket.currency,
      seatLabel: ticket.seatLabel,
      squadId: ticket.squadId,
    );
  }
}
