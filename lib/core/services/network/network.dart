import 'package:blog/config.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Network {
  static const NetworkConstants constants = NetworkConstants();
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
      uri: constants.githubUri,
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

class NetworkConstants {
  const NetworkConstants();
  String get githubUri => 'https://api.github.com/graphql';
  String get getPostList => '''
  query Flutter_Github_GraphQL {
    repository(name: "blog", owner: "MichaelKMalak") {
      issues(filterBy: {states: OPEN, labels: "blog tech"}, first: 20, orderBy: {field: CREATED_AT, direction: ASC}, labels: "") {
        edges {
          node {
            id
            createdAt
            title
            participants(first: 1) {
              nodes {
                avatarUrl
              }
            }
          }
        }
      }
    }
  }
  ''';
}