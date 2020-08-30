import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:blog/ui/widgets/post_list_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<BlogPostHeader> _blogPostList;
  HomeScreen(List<BlogPostHeader> blogPostList) : _blogPostList = blogPostList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: HeaderWidget(avatarUrl: _blogPostList.first?.avatarUrl),
          ),
          Expanded(
            flex: 2,
            child: BlogPostList(_blogPostList),
          ),
        ],
      ),
    );
  }
}
