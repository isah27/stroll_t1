part of '../stroll_configs.dart';

class RouteConfig {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final routerConfig = GoRouter(
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: RoutePaths.home,
        builder: (context, state) => T1SurveyPage(),
      ),
    ],
  );
}
