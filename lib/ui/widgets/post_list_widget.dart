import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/widgets/post_list_item_widget.dart';
import 'package:flutter/material.dart';

class BlogPostList extends StatelessWidget {
  final List<BlogPostHeader> list;
  BlogPostList(this.list);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Posts',
          style: Theme.of(context).textTheme.headline6,
        ),
    //   const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            //primary: false,
            itemCount: list.length,
            itemBuilder: (context, index) {
              final blogPost = list[index];
              return PostListItem(blogPost);
            },
          ),
        ),
      ],
    );
  }
}
