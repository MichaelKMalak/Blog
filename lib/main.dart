import 'package:blog/constants.dart';
import 'package:blog/pages/home/home_page.dart';
import 'package:blog/pages/post/post_page.dart';
import 'package:blog/services/network/network_widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(materialApp());
}

MaterialApp materialApp() {
  return MaterialApp(
    title: 'Blog',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    initialRoute: Constants.initialRoute,
    onGenerateRoute: (settings) {
      final pathComponents = settings.name.split('/');
      switch (settings.name) {
        case Constants.initialRoute:
          return MaterialPageRoute(
            builder: (_) => NetworkWrapper(HomePage()),
            settings: settings,
          );
          break;
        default:
          return MaterialPageRoute(
            builder: (_) => PostPage(
              postId: pathComponents.last,
            ),
            settings: settings,
          );
      }
    },
  );
}
