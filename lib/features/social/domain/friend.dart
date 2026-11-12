import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend.freezed.dart';

/// A friend from the student's campus graph.
@freezed
abstract class Friend with _$Friend {
  const factory Friend({
    required String id,
    required String firstName,
    String? lastName,
    String? avatarUrl,
    @Default('') String schoolName,
    DateTime? lastActiveAt,
    @Default(false) bool isOnline,
    @Default(0) int sharedEvents,
  }) = _Friend;

  const Friend._();

  String get displayName {
    final String last = (lastName ?? '').trim();
    return last.isEmpty ? firstName : '$firstName $last';
  }

  String get statusLabel {
    if (isOnline) {
      return 'En ligne';
    }
    final DateTime? activeAt = lastActiveAt;
    if (activeAt == null) {
      return 'Sur CampusPulse';
    }
    final Duration diff = DateTime.now().difference(activeAt.toLocal());
    if (diff.inMinutes < 60) {
      return 'Actif il y a ${diff.inMinutes} min';
    }
    if (diff.inHours < 24) {
      return 'Actif il y a ${diff.inHours} h';
    }
    return 'Actif il y a ${diff.inDays} j';
  }
}
