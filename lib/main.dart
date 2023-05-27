import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/pages/login.dart';
import './route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter mobile app';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
