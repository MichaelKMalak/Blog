import 'package:blog/constants.dart';
import 'package:blog/route_generator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(materialApp());
}

MaterialApp materialApp() {
  return MaterialApp(
    title: 'Blog',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    initialRoute: Constants.initialRoute,
    onGenerateRoute: RouteGenerator.generateRoute,
  );
}
