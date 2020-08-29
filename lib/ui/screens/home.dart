import 'package:blog/core/services/network/network_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlogPostListQuery(),
    );
  }
}
