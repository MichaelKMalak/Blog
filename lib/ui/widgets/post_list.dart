import 'package:blog/core/models/blog_post/blog_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

class BlogPostList extends StatelessWidget {
  final List<BlogPost> _list;
  BlogPostList(List<BlogPost> list) : _list = list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        final blogPost = _list[index];

        return MarkdownBody(
          selectable: true,
          data: blogPost.body,
          extensionSet: md.ExtensionSet(
              md.ExtensionSet.gitHubFlavored.blockSyntaxes, [
            md.EmojiSyntax(),
            ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
          ]),
        );
      },
    );
  }
}
