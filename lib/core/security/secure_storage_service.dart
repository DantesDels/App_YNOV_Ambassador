import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:campus_pulse/core/errors/app_exception.dart';
import 'auth_tokens.dart';

/// Single gateway to persistent secrets.
///
/// Everything sensitive (JWTs, offline ticket payloads, cached profile) goes
/// through `flutter_secure_storage`: Android Keystore + AES-GCM, iOS Keychain.
/// `SharedPreferences` is never used for secrets.
class SecureStorageService {
  SecureStorageService(this._storage);

  final FlutterSecureStorage _storage;

  static const String _accessTokenKey = 'cp.auth.access_token';
  static const String _refreshTokenKey = 'cp.auth.refresh_token';
  static const String _expiresAtKey = 'cp.auth.expires_at';
  static const String _offlineTicketsKey = 'cp.ticketing.offline_tickets';
  static const String _profileCacheKey = 'cp.profile.cache';
  static const String _notificationPrefsKey = 'cp.profile.notification_prefs';

  Future<void> saveAuthTokens(AuthTokens tokens) async {
    if (!tokens.isComplete) {
      throw const StorageException('Jetons incomplets : écriture refusée.');
    }
    try {
      await _storage.write(key: _accessTokenKey, value: tokens.accessToken);
      await _storage.write(key: _refreshTokenKey, value: tokens.refreshToken);
      final DateTime? expiresAt = tokens.accessTokenExpiresAt;
      if (expiresAt == null) {
        await _storage.delete(key: _expiresAtKey);
      } else {
        await _storage.write(key: _expiresAtKey, value: expiresAt.toUtc().toIso8601String());
      }
    } on Exception catch (error) {
      throw StorageException('Impossible de sécuriser la session.', error);
    }
  }

  Future<AuthTokens?> readAuthTokens() async {
    try {
      final String? accessToken = await _storage.read(key: _accessTokenKey);
      final String? refreshToken = await _storage.read(key: _refreshTokenKey);
      if (accessToken == null || refreshToken == null) {
        return null;
      }
      final String? expiresAt = await _storage.read(key: _expiresAtKey);
      final AuthTokens tokens = AuthTokens(
        accessToken: accessToken,
        refreshToken: refreshToken,
        accessTokenExpiresAt: expiresAt == null ? null : DateTime.tryParse(expiresAt),
      );
      return tokens.isComplete ? tokens : null;
    } on Exception catch (error) {
      throw StorageException('Impossible de lire la session sécurisée.', error);
    }
  }

  Future<void> clearAuthTokens() async {
    try {
      await _storage.delete(key: _accessTokenKey);
      await _storage.delete(key: _refreshTokenKey);
      await _storage.delete(key: _expiresAtKey);
    } on Exception catch (error) {
      throw StorageException('Impossible de fermer la session.', error);
    }
  }

  Future<void> saveOfflineTickets(List<Map<String, dynamic>> tickets) async {
    await _writeJsonList(_offlineTicketsKey, tickets);
  }

  Future<List<Map<String, dynamic>>> readOfflineTickets() async {
    final List<dynamic> raw = await _readJsonList(_offlineTicketsKey);
    return raw.whereType<Map<String, dynamic>>().toList(growable: false);
  }

  Future<void> saveProfileCache(Map<String, dynamic> profile) async {
    await _writeJsonObject(_profileCacheKey, profile);
  }

  Future<Map<String, dynamic>?> readProfileCache() async {
    return _readJsonObject(_profileCacheKey);
  }

  Future<void> saveNotificationPreferences(Map<String, dynamic> preferences) async {
    await _writeJsonObject(_notificationPrefsKey, preferences);
  }

  Future<Map<String, dynamic>?> readNotificationPreferences() async {
    return _readJsonObject(_notificationPrefsKey);
  }

  /// Removes every app secret, including offline tickets. Used on sign-out.
  Future<void> wipeAll() async {
    try {
      await _storage.deleteAll();
    } on Exception catch (error) {
      throw StorageException('Impossible de purger le stockage sécurisé.', error);
    }
  }

  Future<void> _writeJsonObject(String key, Map<String, dynamic> value) async {
    try {
      await _storage.write(key: key, value: jsonEncode(value));
    } on Exception catch (error) {
      throw StorageException('Écriture sécurisée impossible.', error);
    }
  }

  Future<Map<String, dynamic>?> _readJsonObject(String key) async {
    try {
      final String? raw = await _storage.read(key: key);
      if (raw == null) {
        return null;
      }
      final Object? decoded = jsonDecode(raw);
      return decoded is Map<String, dynamic> ? decoded : null;
    } on FormatException catch (error) {
      throw StorageException('Données sécurisées corrompues.', error);
    } on Exception catch (error) {
      throw StorageException('Lecture sécurisée impossible.', error);
    }
  }

  Future<void> _writeJsonList(String key, List<Map<String, dynamic>> value) async {
    try {
      await _storage.write(key: key, value: jsonEncode(value));
    } on Exception catch (error) {
      throw StorageException('Écriture sécurisée impossible.', error);
    }
  }

  Future<List<dynamic>> _readJsonList(String key) async {
    try {
      final String? raw = await _storage.read(key: key);
      if (raw == null) {
        return const <dynamic>[];
      }
      final Object? decoded = jsonDecode(raw);
      return decoded is List<dynamic> ? decoded : const <dynamic>[];
    } on FormatException catch (error) {
      throw StorageException('Billets hors-ligne corrompus.', error);
    } on Exception catch (error) {
      throw StorageException('Lecture sécurisée impossible.', error);
    }
  }
}
