import 'package:blog/ui/widgets/footer_widget.dart';
import 'package:blog/ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class ScaffoldWithHeaderFooter extends StatelessWidget {
  final Widget child;
  final String avatarUrl;

  const ScaffoldWithHeaderFooter({Key key, this.child, this.avatarUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: HeaderWidget(
                      avatarUrl: avatarUrl,
                    ),
                  ),
                  Flexible(
                    child: child,
                  ),
                  Flexible(
                    child: FooterWidget(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
