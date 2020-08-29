library blog_post;


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blog_post.g.dart';

abstract class BlogPost implements Built<BlogPost, BlogPostBuilder> {
  factory BlogPost([void Function(BlogPostBuilder b) updates]) = _$BlogPost;

  BlogPost._();

  String get title;
  String get id;
  String get body;
  String get url;
  String get createdAt;
  @nullable
  String get lastEditedAt;

  static List<BlogPost> fromJsonList(dynamic data) {
    final _array = data['repository']['issues']['edges'];

    final _blogPosts = _array
        .map<BlogPost>((dynamic blog) => BlogPost((BlogPostBuilder b) => b
          ..title = blog['node']['title']
          ..id = blog['node']['id']
          ..body = blog['node']['body']
          ..url = blog['node']['url']
          ..createdAt = blog['node']['createdAt']))
        .toList();

    return _blogPosts;
  }

  static Serializer<BlogPost> get serializer => _$blogPostSerializer;
}
