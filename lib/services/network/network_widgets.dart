import 'package:blog/pages/homepage.dart';
import 'package:blog/services/network/network.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: Network.client(),
      child: HomePage(),
    );
  }
}
