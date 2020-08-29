import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

class BlogPostList extends StatelessWidget {
  final List<BlogPostHeader> _list;
  BlogPostList(List<BlogPostHeader> list) : _list = list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        final blogPost = _list[index];

        return InkWell(
          onTap: () => Navigator.pushNamed(context, '/${blogPost.id}'),
          child: MarkdownBody(
            data: blogPost.title,
            extensionSet: md.ExtensionSet(
                md.ExtensionSet.gitHubFlavored.blockSyntaxes, [
              md.EmojiSyntax(),
              ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
            ]),
          ),
        );
      },
    );
  }
}
