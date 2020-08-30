import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/widgets/post_list_item_widget.dart';
import 'package:flutter/material.dart';

class BlogPostList extends StatelessWidget {
  final List<BlogPostHeader> _list;
  BlogPostList(List<BlogPostHeader> list) : _list = list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Posts',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) {
              final blogPost = _list[index];
              return PostListItem(blogPost);
            },
          ),
        ),
      ],
    );
  }
}
