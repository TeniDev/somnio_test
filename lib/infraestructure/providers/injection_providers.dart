import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:somnio_test/infraestructure/providers/http_providers.dart';

import '../../domain/repositories/repositories.dart';
import '../repositories/repositories_impl.dart';
import '../resources/resources_impl.dart';

final postsRepositoryProvider = Provider<PostRepository>(
  (ref) {
    return PostRepositoryImpl(
      PostResourceJsonPlaceholder(
        httpHelper: ref.watch(jsonPlaceholderApiProvider),
      ),
    );
  },
);
