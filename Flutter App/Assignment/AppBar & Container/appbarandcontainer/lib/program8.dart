import 'package:flutter/material.dart';

class Program8 extends StatefulWidget {
  const Program8({super.key});

  @override
  State<Program8> createState() => _Program8State();
}

class _Program8State extends State<Program8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Border"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              ),
              color: Colors.amber),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
