import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:sharpist/presentation/screens/intro/intro_screen.dart';
import 'package:sharpist/presentation/screens/sign_in/sign_in_screen.dart';

import '../presentation/screens/main/error_screen.dart';
import '../presentation/screens/main/in_progress_screen.dart';

part 'name_routes.dart';

class AppRouter {
  AppRouter._();

  static const String _initial = Routes.root;

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  // GoRouter configuration
  static final GoRouter router = GoRouter(
    initialLocation: _initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    errorBuilder: (context, state) => const ErrorScreen(),
    routes: <RouteBase>[
      GoRoute(
        name: Routes.root,
        path: Routes.root,
        builder: (context, state) {
          return const IntroScreen();
        },
      ),
      GoRoute(
        name: Routes.signIn,
        path: Routes.signIn,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        name: Routes.inProgress,
        path: Routes.inProgress,
        builder: (context, state) => const InProgressScreen(),
      ),
      GoRoute(
        name: Routes.error,
        path: Routes.error,
        builder: (context, state) => const ErrorScreen(),
      ),
    ],
  );
}
