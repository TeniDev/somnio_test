// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsStateImpl _$$PostsStateImplFromJson(Map<String, dynamic> json) =>
    _$PostsStateImpl(
      postsList: (json['postsList'] as List<dynamic>?)
          ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPageRequested: (json['currentPageRequested'] as num).toInt(),
    );

Map<String, dynamic> _$$PostsStateImplToJson(_$PostsStateImpl instance) =>
    <String, dynamic>{
      'postsList': instance.postsList,
      'currentPageRequested': instance.currentPageRequested,
    };
