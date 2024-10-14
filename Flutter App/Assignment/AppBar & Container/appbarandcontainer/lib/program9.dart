import 'package:flutter/material.dart';

class Program9 extends StatefulWidget {
  const Program9({super.key});

  @override
  State<Program9> createState() => _Program9State();
}

class _Program9State extends State<Program9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container CircularBorder"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
