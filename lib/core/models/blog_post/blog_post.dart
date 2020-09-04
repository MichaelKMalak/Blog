library blog_post;

import 'package:built_value/built_value.dart';

part 'blog_post.g.dart';

abstract class BlogPost
    implements Built<BlogPost, BlogPostBuilder> {
  factory BlogPost([void Function(BlogPostBuilder b) updates]) =
      _$BlogPost;

  BlogPost._();

  String get title;
  String get body;
  String get createdAt;
  String get url;
  String get avatarUrl;

  static BlogPost fromJsonList(dynamic data) {
    final _post = data['repository']['issue'];
    final _blogPost = BlogPost(
            (BlogPostBuilder b) => b
              ..title = _post['title']
              ..body = _post['body']
              ..createdAt = _post['createdAt']
              ..url = _post['url']
              ..avatarUrl = _post['author']['avatarUrl']);

    return _blogPost;
  }
}
