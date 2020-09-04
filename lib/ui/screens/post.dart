import 'package:blog/core/models/blog_post/blog_post.dart';
import 'package:blog/ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class BlogPostScreen extends StatelessWidget {
  final BlogPost _post;
  BlogPostScreen({@required BlogPost post}): _post = post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: HeaderWidget(avatarUrl: _post.avatarUrl,),
          ),
          Expanded(
            flex: 2,
            child: Text(_post.title),),
        ],
    ),
    );
  }
}
