import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:somnio_test/core/utils/extensions.dart';

import '../../../../domain/models/models.dart';
import '../../../../infraestructure/providers/providers.dart';

class PostCard extends ConsumerWidget {
  const PostCard({
    super.key,
    required this.post,
    required this.index,
    this.isFirst = false,
  });

  final PostModel post;
  final int index;
  final bool isFirst;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);

    return Container(
      margin: EdgeInsets.only(
        top: isFirst ? 24 : 0,
        left: 24,
        right: 24,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: isDarkMode ? const Color.fromARGB(255, 14, 19, 23) : Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color.fromARGB(255, 225, 222, 236),
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: const ShapeDecoration(
                    color: Color(0xFF241E81),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    //state.postsList![index].category ?? '',
                    context.locale.communityBanner,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  (post.title ?? '').capitalize(),
                  style: const TextStyle(
                    fontSize: 18,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  (post.body ?? '').capitalize().replaceAll('\n', ' '),
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.2,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 24),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        context.locale.readMore,
                        style: const TextStyle(
                          color: Color(0xFF3B6DDF),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        PhosphorIcons.arrowRight(PhosphorIconsStyle.bold),
                        color: const Color(0xFF3B6DDF),
                        size: 16,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(
                    //state.postsList![index].image ?? '',
                    'https://picsum.photos/1000/300',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.1),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.3, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
