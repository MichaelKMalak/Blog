import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final String _postId;
  PostPage({@required String postId}): _postId = postId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(_postId),
    ),
    );
  }
}
