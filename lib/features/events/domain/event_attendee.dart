import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_attendee.freezed.dart';

/// Social proof attached to an event: which friends are going.
///
/// Attendees whose presence is set to "mode discret" are simply not returned by
/// the API, so the client cannot leak their presence.
@freezed
abstract class EventAttendee with _$EventAttendee {
  const factory EventAttendee({
    required String id,
    required String firstName,
    String? lastName,
    String? avatarUrl,
    @Default(true) bool isFriend,
  }) = _EventAttendee;

  const EventAttendee._();

  String get displayName {
    final String last = (lastName ?? '').trim();
    return last.isEmpty ? firstName : '$firstName $last';
  }
}
