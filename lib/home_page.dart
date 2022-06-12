import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("TESTING"),
      ),
      body: const Center(
        child: Text(
          "WORK IN PROGRESS",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
