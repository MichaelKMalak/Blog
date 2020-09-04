import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/core/utils/encoder.dart';
import 'package:blog/ui/shared/markdown_widget.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  final BlogPostHeader _blogPost;
  PostListItem(BlogPostHeader blogPost) : _blogPost = blogPost;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 32,
            child: Text(_buildDate())),
        const Spacer(),
        Expanded(
          flex: 125,
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/${Encoder.encode(_blogPost.number)}'),
            child: MarkdownWidget(_blogPost.title),
          ),
        ),
      ],
    );
  }

  String _buildDate() {
    final date = DateTime.parse(_blogPost.createdAt);
    final dateSlug ="${date.day.toString().padLeft(2,'0')}/${date.month.toString().padLeft(2,'0')}/${date.year.toString()}";
    return dateSlug;
  }
}
