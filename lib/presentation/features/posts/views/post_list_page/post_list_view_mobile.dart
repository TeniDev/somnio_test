import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../widgets/widgets.dart';
import '../../provider/posts_provider.dart';
import '../../widgets/widgets.dart';

class PostListViewMobile extends ConsumerStatefulWidget {
  const PostListViewMobile({super.key});

  @override
  ConsumerState<PostListViewMobile> createState() => _PostListViewMobileState();
}

class _PostListViewMobileState extends ConsumerState<PostListViewMobile> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= (_scrollController.position.maxScrollExtent - 800)) {
      ref.read(postsProvider.notifier).getAllPost(
            newPage: true,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(postsProvider);

    return state.postsList == null
        ? Builder(
            builder: (context) {
              ref.read(postsProvider.notifier).getAllPost();

              return const Center(
                child: LoadingAnimated(),
              );
            },
          )
        : state.postsList!.isEmpty
            ? const Center(
                child: Text(
                  'No posts found',
                ),
              )
            : ListView.builder(
                controller: _scrollController,
                itemCount: state.postsList!.length,
                itemBuilder: (context, index) {
                  return PostCard(
                    post: state.postsList![index],
                    isFirst: index == 0,
                    index: index,
                  );
                },
              );
  }
}
