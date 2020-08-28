import 'package:blog/pages/homepage/homepage.dart';
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
    home: NetworkWrapper(HomePage()),
  );
}
