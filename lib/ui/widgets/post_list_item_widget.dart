import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/shared/markdown_widget.dart';
import 'package:blog/utils/encoder.dart';
import 'package:blog/utils/formatter.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  final BlogPostHeader blogPost;
  PostListItem(this.blogPost);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 32,
            child: Text(Formatter.formatDate(blogPost.createdAt))),
        const Spacer(),
        Expanded(
          flex: 125,
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/${Encoder.encode(blogPost.number)}'),
            child: MarkdownWidget(blogPost.title),
          ),
        ),
      ],
    );
  }
}
