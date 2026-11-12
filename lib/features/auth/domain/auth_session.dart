import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/events/domain/organizer_type.dart';

part 'auth_session.freezed.dart';

/// Minimal identity returned after a successful login. The full profile lives in
/// the profile feature; this model only feeds the router guard and the shell.
@freezed
abstract class AuthSession with _$AuthSession {
  const factory AuthSession({
    required String userId,
    required String email,
    required String firstName,
    required String lastName,
    required String schoolName,
    @Default(<OrganizerType>[]) List<OrganizerType> memberships,
    String? avatarUrl,
    DateTime? expiresAt,
    @Default(false) bool isNewAccount,
  }) = _AuthSession;

  const AuthSession._();

  String get displayName {
    final String last = lastName.trim();
    return last.isEmpty ? firstName : '$firstName $last';
  }

  String get initials {
    final String first = firstName.trim();
    final String last = lastName.trim();
    final String firstInitial = first.isEmpty ? '' : first.substring(0, 1).toUpperCase();
    final String lastInitial = last.isEmpty ? '' : last.substring(0, 1).toUpperCase();
    return '$firstInitial$lastInitial';
  }

  bool get isBdeMember => memberships.contains(OrganizerType.bde);

  bool get isBdsMember => memberships.contains(OrganizerType.bds);
}
