import 'package:flutter/material.dart';

class Program1 extends StatefulWidget {
  const Program1({super.key});

  @override
  State<Program1> createState() => _Program1State();
}

class _Program1State extends State<Program1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.forward), Icon(Icons.search_rounded)],
        title: const Text("APPBAR AND CONTAINER"),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
