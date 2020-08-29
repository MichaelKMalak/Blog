import 'package:blog/config.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Network {
  static const String githubUri = 'https://api.github.com/graphql';
  static const String getPostList = '''
  query Flutter_Github_GraphQL {
    repository(name: "blog", owner: "MichaelKMalak") {
      issues(filterBy: {states: OPEN, labels: "blog"}, first: 20, orderBy: {field: CREATED_AT, direction: ASC}, labels: "") {
        edges {
          node {
            id
            body
            createdAt
            lastEditedAt
            labels(first: 10) {
              nodes {
                name
              }
            }
            title
            url
          }
        }
        totalCount
      }
    }
  }
  ''';

  static Widget wrap({@required Widget child}) {
    return GraphQLProvider(
      client: client(),
      child: child,
    );
  }

  static ValueNotifier<GraphQLClient> client() {
    final client = ValueNotifier<GraphQLClient>(GraphQLClient(
        link: getAuthLink(),
        cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject)));
    return client;
  }

  static Link getAuthLink() {
    final httpLink = HttpLink(
      uri: githubUri,
    );
    final authLink = AuthLink(
      getToken: () async => 'Bearer ${EnvironmentConfig.githubAccessToken}',
    );
    return authLink.concat(httpLink);
  }

  static dynamic launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}