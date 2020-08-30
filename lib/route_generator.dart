import 'package:blog/core/services/network/network_widgets.dart';
import 'package:blog/ui/screens/post.dart';
import 'package:blog/ui/utils/responsive_width_widget.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String initialRoute = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final pathComponents = settings.name.split('/');
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (_) => ResponsiveWidthWidget(
            child: HomeQuery(),
          ),
          settings: settings,
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => ResponsiveWidthWidget(
              child: BlogPostScreen(
            postId: pathComponents.last,
          )),
          settings: settings,
        );
    }
  }
}
