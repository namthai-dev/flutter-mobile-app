import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/login.dart';

Map<String, WidgetBuilder> myRoutes = {
  '/home': (context) => const HomePage(),
  '/login': (context) => const LoginPage(),
};
