import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final dynamic icon;
  final Function onPressed;

  const IconWidget({Key key, this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   IconButton(
      icon: icon,
      color: Colors.black,
      hoverColor: Colors.white,
      splashColor: Colors.white,
      highlightColor: Colors.white,
      onPressed: onPressed);
  }
}
