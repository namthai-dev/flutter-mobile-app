import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            List<String> playerNames = ["Cristiano Ronaldo", "Lional Messi"];
            displayResult(context, playerNames);
          },
          child: const Text("Select Best Football Player"),
        ),
      ),
    );
  }

  displayResult(BuildContext context, List<String> playerNames) async {
    final getSelectedPlayerName =
        await Navigator.pushNamed(context, "/home", arguments: playerNames);
    // ignore: avoid_print
    print(getSelectedPlayerName.toString());
  }
}
