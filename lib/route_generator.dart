import 'package:blog/constants.dart';
import 'package:blog/ui/screens/home.dart';
import 'package:blog/ui/screens/post.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final pathComponents = settings.name.split('/');
    switch (settings.name) {
      case Constants.initialRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => BlogPostScreen(
            postId: pathComponents.last,
          ),
          settings: settings,
        );
    }
  }
}
