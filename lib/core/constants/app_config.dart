/// Runtime configuration.
///
/// Every secret or environment-specific value is injected at build time with
/// `--dart-define`. No API key, pin or endpoint secret is committed in Dart.
///
/// Production build example:
/// ```sh
/// flutter build appbundle \
///   --dart-define=API_BASE_URL=https://api.campuspulse.fr/v1 \
///   --dart-define=SOCKET_BASE_URL=wss://api.campuspulse.fr/v1/realtime \
///   --dart-define=STRIPE_PUBLISHABLE_KEY=pk_live_xxx \
///   --dart-define=SCHOOL_EMAIL_DOMAIN=ecole.fr \
///   --dart-define=ENABLE_CERT_PINNING=true \
///   --dart-define=CERT_SHA256_PINS=sha256/AAA...,sha256/BBB... \
///   --dart-define=USE_MOCK_BACKEND=false \
///   --obfuscate --split-debug-info=build/symbols
/// ```
abstract final class AppConfig {
  static const String appName = 'CampusPulse';

  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://api.campuspulse.app/v1',
  );

  static const String socketBaseUrl = String.fromEnvironment(
    'SOCKET_BASE_URL',
    defaultValue: 'wss://api.campuspulse.app/v1/realtime',
  );

  /// Publishable key only: the Stripe *secret* key never leaves the backend.
  static const String stripePublishableKey = String.fromEnvironment(
    'STRIPE_PUBLISHABLE_KEY',
    defaultValue: 'pk_test_campuspulse_demo',
  );

  static const String stripeMerchantIdentifier = String.fromEnvironment(
    'STRIPE_MERCHANT_ID',
    defaultValue: 'merchant.com.campuspulse',
  );

  static const String stripeReturnUrl = 'campuspulse://stripe-redirect';

  static const String schoolEmailDomain = String.fromEnvironment(
    'SCHOOL_EMAIL_DOMAIN',
    defaultValue: 'ecole.fr',
  );

  static const String deepLinkScheme = 'campuspulse';
  static const String universalLinkHost = 'campuspulse.app';
  static const String inviteWebBaseUrl = 'https://campuspulse.app';

  /// SHA-256 fingerprints of the pinned leaf certificates.
  static final List<String> certificatePins = const String.fromEnvironment(
    'CERT_SHA256_PINS',
  ).split(',').map((String pin) => pin.trim()).where((String pin) => pin.isNotEmpty).toList(growable: false);

  static const bool enableCertificatePinning = bool.fromEnvironment(
    'ENABLE_CERT_PINNING',
    defaultValue: false,
  );

  /// Demo mode ships seeded fixtures so the UI can be reviewed without a
  /// backend. Always disable it for production builds.
  static const bool useMockBackend = bool.fromEnvironment(
    'USE_MOCK_BACKEND',
    defaultValue: true,
  );

  static const Duration requestTimeout = Duration(seconds: 20);
  static const Duration connectTimeout = Duration(seconds: 12);
  static const int maxRetryAttempts = 2;
  static const Duration retryBaseDelay = Duration(milliseconds: 350);

  static const Duration groupHoldDuration = Duration(minutes: 15);
  static const int maxHeldSeats = 3;
  static const int squadMinSeats = 3;
  static const int squadMaxSeats = 4;
  static const String squadDiscountLabel = '-15 %';

  static const Duration activityReconnectDelay = Duration(seconds: 4);
  static const Duration otpResendCooldown = Duration(seconds: 30);
}
