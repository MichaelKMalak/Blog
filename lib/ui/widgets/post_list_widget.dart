import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/utils/markdown_widget.dart';
import 'package:flutter/material.dart';

class BlogPostListWidget extends StatelessWidget {
  final List<BlogPostHeader> _list;
  BlogPostListWidget(List<BlogPostHeader> list) : _list = list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        final blogPost = _list[index];

        return InkWell(
          onTap: () => Navigator.pushNamed(context, '/${blogPost.id}'),
          child: MarkdownWidget(blogPost.title),
        );
      },
    );
  }
}
