import 'package:local_auth/local_auth.dart';

/// Optional local gate in front of the wallet (tickets, payment methods).
///
/// Authentication is never a substitute for the server signature: it only
/// protects a device already unlocked by the legitimate student.
class BiometricGuard {
  BiometricGuard(this._localAuthentication);

  final LocalAuthentication _localAuthentication;

  Future<bool> isAvailable() async {
    try {
      return await _localAuthentication.canCheckBiometrics ||
          await _localAuthentication.isDeviceSupported();
    } on Exception {
      return false;
    }
  }

  Future<bool> authenticate({String reason = 'Confirme ton identité pour accéder à tes billets'}) async {
    if (!await isAvailable()) {
      return false;
    }
    try {
      return await _localAuthentication.authenticate(
        localizedReason: reason,
        biometricOnly: false,
      );
    } on Exception {
      return false;
    }
  }
}
