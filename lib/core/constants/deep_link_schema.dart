import 'app_config.dart';

/// Every route path used by go_router, and every deep-link builder.
abstract final class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String otp = '/login/otp';
  static const String discover = '/discover';
  static const String tickets = '/tickets';
  static const String friends = '/friends';
  static const String profile = '/profile';
  static const String addFriend = '/friends/add';
  static const String event = '/events';
  static const String ticketQr = '/ticket';

  static String eventDetail(String eventId) => '$event/$eventId';

  /// Opens the event page straight into the payment tunnel.
  static String eventCheckout(String eventId, {String? referrerId}) {
    final Uri uri = Uri(
      path: eventDetail(eventId),
      queryParameters: <String, String>{
        'checkout': '1',
        if (referrerId != null && referrerId.isNotEmpty) 'ref': referrerId,
      },
    );
    return uri.toString();
  }

  static String qrTicket(String ticketId) => '$ticketQr/$ticketId/qr';

  /// Universal link first (shareable, falls back to the store), custom scheme
  /// kept for in-app and QR entry points.
  static String eventInvite({required String eventId, required String referrerId}) {
    return Uri(
      scheme: 'https',
      host: AppConfig.universalLinkHost,
      pathSegments: <String>['event', eventId],
      queryParameters: <String, String>{
        'ref': referrerId,
        'utm_source': 'cascade_invite',
      },
    ).toString();
  }

  static String customEventInvite({required String eventId, required String referrerId}) {
    return Uri(
      scheme: AppConfig.deepLinkScheme,
      host: 'event',
      pathSegments: <String>[eventId],
      queryParameters: <String, String>{'ref': referrerId},
    ).toString();
  }

  static String friendQrPayload({required String friendId, required String token}) {
    return Uri(
      scheme: AppConfig.deepLinkScheme,
      host: 'friend',
      pathSegments: <String>[friendId],
      queryParameters: <String, String>{'token': token},
    ).toString();
  }
}
