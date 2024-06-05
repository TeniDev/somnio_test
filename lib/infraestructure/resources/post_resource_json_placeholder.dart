import 'dart:convert';

import 'package:either_dart/either.dart';

import '../../domain/helpers/helpers.dart';
import '../../domain/models/models.dart';
import '../../domain/resources/resources.dart';

class PostResourceJsonPlaceholder implements PostResource {
  PostResourceJsonPlaceholder({
    required HttpHelper httpHelper,
  }) : _httpHelper = httpHelper;

  final HttpHelper _httpHelper;

  @override
  Future<Either<ApiException, List<PostModel>>> getAllPosts({String? language, String? page}) async {
    final response = await _httpHelper.get(
      '/posts',
    );

    if (response.statusCode == 200) {
      final postsJson = jsonDecode(response.body) as List;

      List<PostModel> postsList = [];

      for (final post in postsJson) {
        postsList.add(PostModel.fromJson(
          post as Map<String, dynamic>,
        ));
      }

      return Right(postsList);
    } else {
      return Left(
        ApiException(
          response.statusCode,
          jsonDecode(response.body)['status_message'] ?? 'Unknown error',
        ),
      );
    }
  }
}
