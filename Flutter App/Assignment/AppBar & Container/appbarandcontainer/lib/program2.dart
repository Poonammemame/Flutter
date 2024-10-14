import 'package:flutter/material.dart';

class Program2 extends StatefulWidget {
  const Program2({super.key});

  @override
  State<Program2> createState() => _Program2State();
}

class _Program2State extends State<Program2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.forward), Icon(Icons.search_rounded)],
        title: const Text("APPBAR AND CONTAINER"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
    );
  }
}
