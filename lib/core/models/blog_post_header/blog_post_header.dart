library blog_post_header;

import 'package:built_value/built_value.dart';

part 'blog_post_header.g.dart';

abstract class BlogPostHeader
    implements Built<BlogPostHeader, BlogPostHeaderBuilder> {
  factory BlogPostHeader([void Function(BlogPostHeaderBuilder b) updates]) =
      _$BlogPostHeader;

  BlogPostHeader._();

  String get title;
  String get number;
  String get createdAt;
  String get avatarUrl;

  static List<BlogPostHeader> fromJsonList(dynamic data) {
    final _array = data['repository']['issues']['edges'];

    final _blogPosts = _array
        .map<BlogPostHeader>((dynamic blog) => BlogPostHeader(
            (BlogPostHeaderBuilder b) => b
              ..title = blog['node']['title']
              ..number = blog['node']['number'].toString()
              ..createdAt = blog['node']['createdAt']
              ..avatarUrl =
                  blog['node']['author']['avatarUrl']))
        .toList();

    return _blogPosts;
  }
}
