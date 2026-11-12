import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/features/auth/domain/auth_session.dart';
import 'package:campus_pulse/features/auth/presentation/pages/login_page.dart';
import 'package:campus_pulse/features/auth/presentation/pages/otp_page.dart';
import 'package:campus_pulse/features/auth/presentation/pages/splash_page.dart';
import 'package:campus_pulse/features/auth/presentation/providers/auth_providers.dart';
import 'package:campus_pulse/features/events/presentation/pages/discover_page.dart';
import 'package:campus_pulse/features/events/presentation/pages/event_detail_page.dart';
import 'package:campus_pulse/features/profile/presentation/pages/profile_page.dart';
import 'package:campus_pulse/features/social/presentation/pages/add_friend_qr_scanner_page.dart';
import 'package:campus_pulse/features/social/presentation/pages/friends_page.dart';
import 'package:campus_pulse/features/ticketing/presentation/pages/my_tickets_page.dart';
import 'package:campus_pulse/features/ticketing/presentation/pages/qr_ticket_full_screen_page.dart';
import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'app_shell_page.dart';
import 'deep_link_parser.dart';
import 'route_error_page.dart';

part 'app_router.g.dart';

/// Overridden in `main.dart` with the normalised cold-start deep link.
@riverpod
String initialLocation(Ref ref) => AppRoutes.splash;

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  final String initial = ref.watch(initialLocationProvider);
  final ValueNotifier<int> authRefresh = ValueNotifier<int>(0);

  ref.listen<AsyncValue<AuthSession?>>(authControllerProvider, (_, _) {
    authRefresh.value++;
  });

  final GoRouter router = GoRouter(
    initialLocation: initial,
    refreshListenable: authRefresh,
    debugLogDiagnostics: kDebugMode,
    redirect: (BuildContext context, GoRouterState state) => _redirect(ref, state),
    errorBuilder: (BuildContext context, GoRouterState state) => RouteErrorPage(
      message: state.error?.message,
    ),
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.splash,
        builder: (BuildContext context, GoRouterState state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (BuildContext context, GoRouterState state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.otp,
        builder: (BuildContext context, GoRouterState state) => const OtpPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          return AppShellPage(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.discover,
                builder: (BuildContext context, GoRouterState state) =>
                    const DiscoverPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.tickets,
                builder: (BuildContext context, GoRouterState state) =>
                    const MyTicketsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.friends,
                builder: (BuildContext context, GoRouterState state) =>
                    const FriendsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.profile,
                builder: (BuildContext context, GoRouterState state) =>
                    const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.event,
        redirect: (BuildContext context, GoRouterState state) =>
            AppRoutes.discover,
      ),
      GoRoute(
        path: '${AppRoutes.event}/:id',
        builder: (BuildContext context, GoRouterState state) {
          final String eventId = state.pathParameters['id'] ?? '';
          return EventDetailPage(
            eventId: eventId,
            referrerId: state.uri.queryParameters['ref'],
            openCheckout: state.uri.queryParameters['checkout'] == '1',
          );
        },
      ),
      GoRoute(
        path: '${AppRoutes.ticketQr}/:id/qr',
        builder: (BuildContext context, GoRouterState state) {
          return QrTicketFullScreenPage(ticketId: state.pathParameters['id'] ?? '');
        },
      ),
      GoRoute(
        path: AppRoutes.addFriend,
        builder: (BuildContext context, GoRouterState state) {
          return AddFriendQrScannerPage(
            prefilledFriendId: state.uri.queryParameters['friend'],
            prefilledToken: state.uri.queryParameters['token'],
          );
        },
      ),
    ],
  );

  ref.onDispose(() {
    authRefresh.dispose();
    router.dispose();
  });
  return router;
}

String? _redirect(Ref ref, GoRouterState state) {
  final Uri uri = state.uri;

  // `campuspulse://event/{id}?ref=...`, `https://campuspulse.app/event/{id}`
  // and `campuspulse://friend/{id}` all resolve to internal routes here.
  final ParsedDeepLink? parsed = const DeepLinkParser().parse(uri);
  if (parsed != null) {
    return parsed.location;
  }

  final AsyncValue<AuthSession?> auth = ref.read(authControllerProvider);
  final String path = uri.path;
  final bool isSplash = path == AppRoutes.splash;
  final bool isLogin = path == AppRoutes.login;
  final bool isOtp = path == AppRoutes.otp;

  if (auth.isLoading) {
    return isSplash ? null : AppRoutes.splash;
  }

  final bool isAuthenticated = auth.value != null;

  if (!isAuthenticated) {
    if (isLogin || isOtp) {
      return null;
    }
    return Uri(
      path: AppRoutes.login,
      queryParameters: <String, String>{'from': uri.toString()},
    ).toString();
  }

  if (isSplash || isLogin || isOtp) {
    final String? from = uri.queryParameters['from'];
    if (from != null && from.startsWith('/') && !from.startsWith(AppRoutes.login)) {
      return from;
    }
    return AppRoutes.discover;
  }

  return null;
}
