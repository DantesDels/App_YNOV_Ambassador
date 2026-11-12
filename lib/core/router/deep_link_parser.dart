
import 'package:campus_pulse/core/constants/app_config.dart';

/// Result of normalising an incoming invite link.
class ParsedDeepLink {
  const ParsedDeepLink({
    required this.location,
    this.eventId,
    this.referrerId,
    this.friendId,
    this.openCheckout = false,
  });

  final String location;
  final String? eventId;
  final String? referrerId;
  final String? friendId;
  final bool openCheckout;
}

/// Resolves both custom-scheme (`campuspulse://event/{id}?ref=...`) and
/// verified universal links (`https://campuspulse.app/event/{id}?ref=...`)
/// into go_router locations.
class DeepLinkParser {
  const DeepLinkParser();

  ParsedDeepLink? parse(Uri uri) {
    final bool customScheme = uri.scheme == AppConfig.deepLinkScheme;
    final bool universalLink = uri.scheme == 'https' && uri.host == AppConfig.universalLinkHost;
    if (!customScheme && !universalLink) {
      return null;
    }

    final List<String> segments = <String>[
      if (customScheme && uri.host.isNotEmpty) uri.host,
      ...uri.pathSegments.where((String segment) => segment.isNotEmpty),
    ];
    if (segments.length < 2) {
      return null;
    }

    final String kind = segments.first;
    final String id = segments[1];
    final Map<String, String> query = uri.queryParameters;
    final String? referrerId = query['ref'];
    final bool openCheckout = query['checkout'] == '1' || query['pay'] == '1';

    return switch (kind) {
      'event' => ParsedDeepLink(
        location: Uri(
          path: '/events/$id',
          queryParameters: <String, String>{
            if (referrerId != null && referrerId.isNotEmpty) 'ref': referrerId,
            if (openCheckout) 'checkout': '1',
          },
        ).toString(),
        eventId: id,
        referrerId: referrerId,
        openCheckout: openCheckout,
      ),
      'friend' => ParsedDeepLink(
        location: Uri(
          path: '/friends/add',
          queryParameters: <String, String>{
            'friend': id,
            if (query['token'] != null && query['token']!.isNotEmpty) 'token': query['token']!,
          },
        ).toString(),
        friendId: id,
      ),
      'tickets' => const ParsedDeepLink(location: '/tickets'),
      _ => null,
    };
  }
}
