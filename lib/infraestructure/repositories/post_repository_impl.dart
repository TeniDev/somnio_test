import 'package:either_dart/either.dart';

import '../../domain/helpers/helpers.dart';
import '../../domain/models/models.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/resources/resources.dart';

class PostRepositoryImpl implements PostRepository {
  final PostResource _postResource;

  PostRepositoryImpl(this._postResource);

  @override
  Future<Either<ApiException, List<PostModel>>> getAllPosts({String? language, String? page}) {
    return _postResource.getAllPosts(
      language: language,
      page: page,
    );
  }
}
