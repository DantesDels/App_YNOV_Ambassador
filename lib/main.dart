import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'core/constants/deep_link_schema.dart';
import 'core/constants/app_config.dart';
import 'core/router/app_router.dart';
import 'core/router/deep_link_parser.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('fr_FR');

  if (AppConfig.stripePublishableKey.isNotEmpty) {
    Stripe.publishableKey = AppConfig.stripePublishableKey;
    Stripe.urlScheme = AppConfig.deepLinkScheme;
  }

  runApp(
    ProviderScope(
      overrides: [
        initialLocationProvider.overrideWithValue(_coldStartLocation()),
      ],
      child: const CampusPulseApp(),
    ),
  );
}

/// Resolves the link that launched the app (custom scheme or universal link)
/// into an internal go_router location.
String _coldStartLocation() {
  final String launchRoute = WidgetsBinding.instance.platformDispatcher.defaultRouteName;
  final Uri? uri = Uri.tryParse(launchRoute);
  if (uri == null) {
    return AppRoutes.splash;
  }
  return const DeepLinkParser().parse(uri)?.location ?? AppRoutes.splash;
}

