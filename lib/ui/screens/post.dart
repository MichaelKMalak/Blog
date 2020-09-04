import 'package:blog/core/models/blog_post/blog_post.dart';
import 'package:blog/ui/widgets/blog_post_widget.dart';
import 'package:blog/ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class BlogPostScreen extends StatelessWidget {
  final BlogPost post;
  BlogPostScreen({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Flexible(
              flex: 1,
              child: HeaderWidget(
                avatarUrl: post.avatarUrl,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: BlogPostWidget(post: post),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
