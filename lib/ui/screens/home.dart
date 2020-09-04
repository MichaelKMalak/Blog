import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/shared/scaffold_with_header_footer.dart';
import 'package:flutter/material.dart';
import 'package:blog/ui/widgets/post_list_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<BlogPostHeader> blogPostList;
  HomeScreen(this.blogPostList);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithHeaderFooter(
      avatarUrl: blogPostList.first?.avatarUrl,
      child: BlogPostList(blogPostList),
    );
  }
}
