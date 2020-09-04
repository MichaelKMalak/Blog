import 'package:blog/core/services/network/network_widgets.dart';
import 'package:blog/core/utils/encoder.dart';
import 'package:blog/ui/shared/responsive_width_widget.dart';
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
              child: BlogPostQuery(
            postId: Encoder.decode(pathComponents.last),
          )),
          settings: settings,
        );
    }
  }
}
