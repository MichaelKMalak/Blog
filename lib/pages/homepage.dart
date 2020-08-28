import 'package:flutter/widgets.dart';
import 'package:blog/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:markdown/markdown.dart' as md;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Query(
          options: QueryOptions(
            documentNode: gql(Constants.readBlogPosts),
            variables: {
              'nRepositories': 50,
            },
            pollInterval: 10,
          ),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final repositories = result.data['repository']['issues']['edges'];
            return ListView.builder(
                itemCount: repositories.length,
                itemBuilder: (context, index) {
                  final repository = repositories[index];

                  return MarkdownBody(
                    //controller: controller,
                    selectable: true,
                    data: repository['node']['body'],
                    extensionSet: md.ExtensionSet(
                        md.ExtensionSet.gitHubFlavored.blockSyntaxes, [
                      md.EmojiSyntax(),
                      ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
                    ]),
                  );
                });
          },
        ),
      ),
    );
  }
}
