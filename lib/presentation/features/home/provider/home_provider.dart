import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/router/router.dart';

final homeProvider = StateNotifierProvider<_HomeEventNotifier, void>(
  (ref) {
    return _HomeEventNotifier(ref);
  },
);

class _HomeEventNotifier extends StateNotifier<void> {
  _HomeEventNotifier(this.ref) : super(null);

  final Ref ref;

  void changeCurrentIndexBottomBar(int index) {
    ref.read(goRouterProvider).go(
          index == 0 ? RoutesNames.posts : RoutesNames.settings,
        );
  }
}
