import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:blog/ui/widgets/post_list_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<BlogPostHeader> blogPostList;
  HomeScreen(this.blogPostList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Flexible(
              flex: 1,
              child: HeaderWidget(avatarUrl: blogPostList.first?.avatarUrl),
            ),
          ),
          SliverFillViewport(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return BlogPostList(blogPostList);
              },
            ),
          ),
        ],
      ),
    );
  }
}
