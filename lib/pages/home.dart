import 'package:flutter/material.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/events/auth_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.email});
  final String email;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = AuthBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
          child: Text(
            "Logined as: ${widget.email}",
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                _bloc.eventController.sink.add(LogoutEvent());
                Navigator.popAndPushNamed(context, "/login");
              },
              child: const Text("Logout")),
        )
      ]),
    );
  }
}
