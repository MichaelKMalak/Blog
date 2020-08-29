import 'package:flutter/material.dart';

class BlogPostScreen extends StatelessWidget {
  final String _postId;
  BlogPostScreen({@required String postId}): _postId = postId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_postId),
    ),
    );
  }
}
