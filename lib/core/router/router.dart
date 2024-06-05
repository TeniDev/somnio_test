import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/features/features.dart';

part 'routes_handlers.dart';
part 'routes_names.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: RoutesNames.posts,
    routes: [
      ShellRoute(
        navigatorKey: homeNavigatorKey,
        builder: _homeHandler,
        routes: [
          GoRoute(
            path: RoutesNames.posts,
            parentNavigatorKey: homeNavigatorKey,
            pageBuilder: _postsHandler,
          ),
          GoRoute(
            path: RoutesNames.settings,
            parentNavigatorKey: homeNavigatorKey,
            pageBuilder: _settingsHandler,
          ),
        ],
      ),
    ],
  );
});
