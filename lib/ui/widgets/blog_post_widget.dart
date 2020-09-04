import 'package:blog/core/models/blog_post/blog_post.dart';
import 'package:blog/ui/shared/markdown_widget.dart';
import 'package:blog/utils/formatter.dart';
import 'package:flutter/material.dart';

class BlogPostWidget extends StatelessWidget {
  final BlogPost post;

  const BlogPostWidget({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          post.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          Formatter.formatDate(post.createdAt),
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(height: 15),
        MarkdownWidget(post.body),
      ],
    );
  }
}
