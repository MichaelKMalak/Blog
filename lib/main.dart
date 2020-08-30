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
    theme: ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white
    ),
    initialRoute: RouteGenerator.initialRoute,
    onGenerateRoute: RouteGenerator.generateRoute,
  );
}
