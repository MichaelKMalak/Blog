import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

class MarkdownWidget extends StatelessWidget {
  final String _text;
  MarkdownWidget(String text) : _text = text;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: _text,
      extensionSet: md.ExtensionSet(
          md.ExtensionSet.gitHubFlavored.blockSyntaxes, [
        md.EmojiSyntax(),
        ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
      ]),
    );
  }
}
