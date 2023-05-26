import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.listPlayerNames});
  final List<String> listPlayerNames;
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter mobile app'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var playerName in widget.listPlayerNames)
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, playerName);
                    },
                    child: Text(playerName.toString())),
              )
          ],
        ),
      ),
    );
  }
}
