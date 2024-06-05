part of 'router.dart';

Widget _homeHandler(BuildContext context, GoRouterState state, Widget child) {
  return HomePage(child: child);
}

Page<Widget> _postsHandler(
  BuildContext context,
  GoRouterState state,
) {
  return const NoTransitionPage(
    child: PostListPage(),
  );
}

Page<Widget> _settingsHandler(
  BuildContext context,
  GoRouterState state,
) {
  return const NoTransitionPage(
    child: SettingsPage(),
  );
}
