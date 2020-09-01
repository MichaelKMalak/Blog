import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/utils/markdown_widget.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  final BlogPostHeader _blogPost;
  PostListItem(BlogPostHeader blogPost) : _blogPost = blogPost;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(buildDate()),
        const SizedBox(width: 15),
        InkWell(
          onTap: () => Navigator.pushNamed(context, '/${_blogPost.id}'),
          child: MarkdownWidget(_blogPost.title),
        ),
      ],
    );
  }

  String buildDate() {
    final date = DateTime.parse(_blogPost.createdAt);
    final dateSlug ="${date.day.toString().padLeft(2,'0')}/${date.month.toString().padLeft(2,'0')}/${date.year.toString()}";
    return dateSlug;
  }
}
