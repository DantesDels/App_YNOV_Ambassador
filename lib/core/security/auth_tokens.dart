import 'package:flutter/foundation.dart';

/// Access/refresh JWT pair. Only ever persisted in [SecureStorageService]
/// (iOS Keychain / Android Keystore-backed AES-GCM).
@immutable
class AuthTokens {
  const AuthTokens({
    required this.accessToken,
    required this.refreshToken,
    this.accessTokenExpiresAt,
  });

  factory AuthTokens.fromJson(Map<String, dynamic> json) {
    final Object? expiresAt = json['accessTokenExpiresAt'];
    return AuthTokens(
      accessToken: json['accessToken'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
      accessTokenExpiresAt: expiresAt is String ? DateTime.tryParse(expiresAt) : null,
    );
  }

  final String accessToken;
  final String refreshToken;
  final DateTime? accessTokenExpiresAt;

  bool get isComplete => accessToken.isNotEmpty && refreshToken.isNotEmpty;

  bool get isAccessTokenValid {
    final DateTime? expiresAt = accessTokenExpiresAt;
    if (expiresAt == null) {
      return true;
    }
    return expiresAt.isAfter(DateTime.now().toUtc().add(const Duration(seconds: 30)));
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'accessToken': accessToken,
    'refreshToken': refreshToken,
    'accessTokenExpiresAt': accessTokenExpiresAt?.toUtc().toIso8601String(),
  };
}
