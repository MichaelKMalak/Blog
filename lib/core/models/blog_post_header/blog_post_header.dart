library blog_post_header;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blog_post_header.g.dart';

abstract class BlogPostHeader
    implements Built<BlogPostHeader, BlogPostHeaderBuilder> {
  factory BlogPostHeader([void Function(BlogPostHeaderBuilder b) updates]) =
      _$BlogPostHeader;

  BlogPostHeader._();

  String get title;
  String get id;
  String get createdAt;

  static List<BlogPostHeader> fromJsonList(dynamic data) {
    final _array = data['repository']['issues']['edges'];

    final _blogPosts = _array
        .map<BlogPostHeader>(
            (dynamic blog) => BlogPostHeader((BlogPostHeaderBuilder b) => b
              ..title = blog['node']['title']
              ..id = blog['node']['id']
              ..createdAt = blog['node']['createdAt']))
        .toList();

    return _blogPosts;
  }

  static Serializer<BlogPostHeader> get serializer =>
      _$blogPostHeaderSerializer;
}
