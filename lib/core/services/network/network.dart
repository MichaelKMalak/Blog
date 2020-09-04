import 'package:blog/config.dart';
import 'package:blog/core/services/network/network_constants.dart';
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
