import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final authModel = Provider.of<AuthModel>(context);

    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
          child: Text(
            "Logined as: ${authModel.email}",
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                authModel.authState = false;
                authModel.email = "";
                Navigator.popAndPushNamed(context, "/login");
              },
              child: const Text("Logout")),
        )
      ]),
    );
  }
}
