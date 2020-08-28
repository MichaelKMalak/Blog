import 'package:blog/config.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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
            bodyHTML
            createdAt
            lastEditedAt
            labels(first: 10) {
              nodes {
                name
              }
            }
            title
            url
            updatedAt
          }
        }
        totalCount
      }
    }
  }
  ''';

  static Widget wrap (Widget _widget) {
    return GraphQLProvider(
      client: client(),
      child: _widget,
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
}
