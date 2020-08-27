import 'package:blog/pages/homepage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Blog',
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(
    //   visualDensity: VisualDensity.adaptivePlatformDensity,
    // ),
    home: HomePageWrapper(),
  ));
}
