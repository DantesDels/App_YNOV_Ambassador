import 'dart:convert';

import 'package:campus_pulse/core/errors/app_exception.dart';

/// Decodes JWT claims locally.
///
/// The client **never** verifies a signature: ticket QR codes are verified by
/// the staff terminal against the backend public key, and session JWTs are
/// verified by the API. Locally we only read the expiry to refresh early.
class JwtDecoder {
  const JwtDecoder();

  Map<String, dynamic> payload(String token) {
    final List<String> parts = token.split('.');
    if (parts.length != 3) {
      throw const ValidationException('Jeton invalide.');
    }
    try {
      final String normalized = base64Url.normalize(parts[1]);
      final Object? decoded = jsonDecode(utf8.decode(base64Url.decode(normalized)));
      if (decoded is! Map<String, dynamic>) {
        throw const ValidationException('Charge utile du jeton invalide.');
      }
      return decoded;
    } on FormatException catch (error) {
      throw ValidationException('Jeton illisible.', cause: error);
    }
  }

  DateTime? expiry(String token) {
    final Object? exp = payload(token)['exp'];
    if (exp is num) {
      return DateTime.fromMillisecondsSinceEpoch((exp * 1000).round(), isUtc: true);
    }
    return null;
  }

  String? subject(String token) {
    final Object? sub = payload(token)['sub'];
    return sub is String ? sub : null;
  }

  bool isExpired(String token, {Duration clockSkew = const Duration(seconds: 30)}) {
    final DateTime? expiresAt = expiry(token);
    if (expiresAt == null) {
      return false;
    }
    return !expiresAt.isAfter(DateTime.now().toUtc().add(clockSkew));
  }
}
