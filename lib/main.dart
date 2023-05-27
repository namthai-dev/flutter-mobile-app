import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/auth.dart';
import './routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter mobile app';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthModel())],
      child: MaterialApp(
        title: _title,
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        initialRoute: '/login',
        routes: myRoutes,
      ),
    );
  }
}
