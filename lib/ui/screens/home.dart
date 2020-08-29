import 'package:blog/core/services/network/network.dart';
import 'package:blog/core/services/network/network_widgets.dart';
import 'package:blog/ui/utils/responsive_width_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Network.wrap(
      child: ResponsiveWidthWidget(
        child: Scaffold(
        body: BlogPostListQuery(),
        ),
      ),
    );
  }
}
