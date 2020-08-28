import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

class PostList extends StatelessWidget {
  final dynamic _list;
  PostList(dynamic list) : _list = list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        final repository = _list[index];

        return MarkdownBody(
          selectable: true,
          data: repository['node']['body'],
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
