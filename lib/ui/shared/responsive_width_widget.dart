import 'package:blog/constants.dart';
import 'package:flutter/material.dart';

class ResponsiveWidthWidget extends StatelessWidget {
  final Widget _child;
  ResponsiveWidthWidget({@required Widget child}) : _child = child;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final maxWidth = Constants.maxScaffoldWidth;
    final widthFactor = Constants.widthFactor;
    return Center(
      child: Container(
        width: width > maxWidth ? maxWidth : width,
        child: FractionallySizedBox(widthFactor: widthFactor, child: _child),
      ),
    );
  }
}
