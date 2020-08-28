import 'package:blog/config.dart';
import 'package:blog/constants.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Network {
  static ValueNotifier<GraphQLClient> client() {
    final client = ValueNotifier<GraphQLClient>(GraphQLClient(
        link: getAuthLink(),
        cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject)));
    return client;
  }

  static Link getAuthLink() {
    final httpLink = HttpLink(
      uri: Constants.githubUri,
    );
    final authLink = AuthLink(
      getToken: () async => 'Bearer ${EnvironmentConfig.githubAccessToken}',
    );
    return authLink.concat(httpLink);
  }
}
