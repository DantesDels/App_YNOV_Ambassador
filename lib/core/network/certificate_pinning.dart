import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

import 'package:campus_pulse/core/constants/app_config.dart';

/// TLS certificate pinning.
///
/// When `CERT_SHA256_PINS` is provided at build time, the leaf certificate
/// SHA-256 fingerprint must match one of the pins. Pinning failures abort the
/// handshake before any request is sent.
class CertificatePinning {
  const CertificatePinning({required this.pins});

  final List<String> pins;

  bool get isEnabled => pins.isNotEmpty;

  /// Builds the [HttpClient] used by [IOHttpClientAdapter].
  ///
  /// Implementing pinning through `badCertificateCallback` requires disabling
  /// the default trust store: every chain is then routed to our callback, which
  /// only accepts a SHA-256 fingerprint present in [pins].
  HttpClient createClient() {
    final HttpClient client = HttpClient(
      context: SecurityContext(withTrustedRoots: !isEnabled),
    );
    client
      ..connectionTimeout = AppConfig.connectTimeout
      ..idleTimeout = const Duration(seconds: 15);

    if (isEnabled) {
      client.badCertificateCallback = (X509Certificate certificate, String host, int port) {
        final String fingerprint = fingerprintOf(certificate.der);
        final bool allowed = pins.contains(fingerprint);
        if (!allowed) {
          debugPrint('CampusPulse: certificate pin mismatch for $host:$port ($fingerprint)');
        }
        return allowed;
      };
    }
    return client;
  }

  static String fingerprintOf(List<int> derBytes) {
    final List<int> digest = sha256.convert(derBytes).bytes;
    return 'sha256/${base64.encode(digest)}';
  }

  /// Constant-time comparison helper for pin rotation diagnostics.
  static bool constantTimeEquals(String a, String b) {
    if (a.length != b.length) {
      return false;
    }
    int diff = 0;
    for (int i = 0; i < a.length; i++) {
      diff |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }
    return diff == 0;
  }
}
