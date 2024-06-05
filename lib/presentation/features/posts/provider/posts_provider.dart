import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/utils.dart';
import '../../../../infraestructure/providers/injection_providers.dart';
import '../../../../infraestructure/providers/providers.dart';
import '../state/posts_state.dart';

final postsProvider = StateNotifierProvider<_PostsEventNotifier, PostsState>(
  (ref) {
    return _PostsEventNotifier(ref);
  },
);

class _PostsEventNotifier extends StateNotifier<PostsState> {
  _PostsEventNotifier(this.ref)
      : super(const PostsState(
          postsList: null,
          currentPageRequested: 1,
        ));

  final Ref ref;

  Future<void> getAllPost({bool newPage = false}) async {
    final response = await ref.read(postsRepositoryProvider).getAllPosts(
          language: ref.watch(localeProvider).languageCode,
          page: (state.currentPageRequested + (newPage ? 1 : 0)).toString(),
        );

    response.fold(
      (l) {
        CustomLogger().error(
          'Error: ${l.httpCode} - ${l.message}',
        );

        state = state.copyWith(
          postsList: [],
        );
      },
      (r) {
        state = state.copyWith(
          postsList: state.postsList != null ? [...state.postsList!, ...r] : r,
          currentPageRequested: newPage ? state.currentPageRequested + 1 : state.currentPageRequested,
        );
      },
    );
  }
}
