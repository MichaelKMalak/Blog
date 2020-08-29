import 'package:blog/core/services/network/network.dart';
import 'package:blog/core/services/network/network_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Network.wrap(
      child: Container(
        width: MediaQuery.of(context).size.width > 700
            ? 700
            : MediaQuery.of(context).size.width,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Center(
              child: BlogPostListQuery(),
            ),
          ),
        ),
      ),
    );
  }
}
