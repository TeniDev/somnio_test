import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/models.dart';

part 'posts_state.freezed.dart';
part 'posts_state.g.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    required List<PostModel>? postsList,
    required int currentPageRequested,
  }) = _PostsState;

  factory PostsState.fromJson(Map<String, dynamic> json) => _$PostsStateFromJson(json);
}
