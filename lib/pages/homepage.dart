import 'package:flutter/widgets.dart';
import 'package:blog/config.dart';
import 'package:blog/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:markdown/markdown.dart' as md;


class HomePageWrapper extends StatefulWidget {
  @override
  _HomePageWrapperState createState() => _HomePageWrapperState();
}

class _HomePageWrapperState extends State<HomePageWrapper> {
  @override
  Widget build(BuildContext context) {
    final httpLink = HttpLink(
      uri: Constants.githubUri,
    );
    final authLink = AuthLink(
      getToken: () async => 'Bearer ${EnvironmentConfig.githubAccessToken}',
    );
    final link = authLink.concat(httpLink);
    final client = ValueNotifier<GraphQLClient>(GraphQLClient(
        link: link,
        cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject)));

    return GraphQLProvider(
      client: client,
      child: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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