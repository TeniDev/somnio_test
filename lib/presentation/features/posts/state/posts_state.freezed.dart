// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostsState _$PostsStateFromJson(Map<String, dynamic> json) {
  return _PostsState.fromJson(json);
}

/// @nodoc
mixin _$PostsState {
  List<PostModel>? get postsList => throw _privateConstructorUsedError;
  int get currentPageRequested => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
  @useResult
  $Res call({List<PostModel>? postsList, int currentPageRequested});
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postsList = freezed,
    Object? currentPageRequested = null,
  }) {
    return _then(_value.copyWith(
      postsList: freezed == postsList
          ? _value.postsList
          : postsList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      currentPageRequested: null == currentPageRequested
          ? _value.currentPageRequested
          : currentPageRequested // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsStateImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$PostsStateImplCopyWith(
          _$PostsStateImpl value, $Res Function(_$PostsStateImpl) then) =
      __$$PostsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostModel>? postsList, int currentPageRequested});
}

/// @nodoc
class __$$PostsStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsStateImpl>
    implements _$$PostsStateImplCopyWith<$Res> {
  __$$PostsStateImplCopyWithImpl(
      _$PostsStateImpl _value, $Res Function(_$PostsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postsList = freezed,
    Object? currentPageRequested = null,
  }) {
    return _then(_$PostsStateImpl(
      postsList: freezed == postsList
          ? _value._postsList
          : postsList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      currentPageRequested: null == currentPageRequested
          ? _value.currentPageRequested
          : currentPageRequested // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsStateImpl implements _PostsState {
  const _$PostsStateImpl(
      {required final List<PostModel>? postsList,
      required this.currentPageRequested})
      : _postsList = postsList;

  factory _$PostsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsStateImplFromJson(json);

  final List<PostModel>? _postsList;
  @override
  List<PostModel>? get postsList {
    final value = _postsList;
    if (value == null) return null;
    if (_postsList is EqualUnmodifiableListView) return _postsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int currentPageRequested;

  @override
  String toString() {
    return 'PostsState(postsList: $postsList, currentPageRequested: $currentPageRequested)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._postsList, _postsList) &&
            (identical(other.currentPageRequested, currentPageRequested) ||
                other.currentPageRequested == currentPageRequested));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_postsList), currentPageRequested);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      __$$PostsStateImplCopyWithImpl<_$PostsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsStateImplToJson(
      this,
    );
  }
}

abstract class _PostsState implements PostsState {
  const factory _PostsState(
      {required final List<PostModel>? postsList,
      required final int currentPageRequested}) = _$PostsStateImpl;

  factory _PostsState.fromJson(Map<String, dynamic> json) =
      _$PostsStateImpl.fromJson;

  @override
  List<PostModel>? get postsList;
  @override
  int get currentPageRequested;
  @override
  @JsonKey(ignore: true)
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
