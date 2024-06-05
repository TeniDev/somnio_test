import 'package:either_dart/either.dart';

import '../helpers/helpers.dart';
import '../models/models.dart';

abstract class PostRepository {
  Future<Either<ApiException, List<PostModel>>> getAllPosts({
    String? language,
    String? page,
  });
}
