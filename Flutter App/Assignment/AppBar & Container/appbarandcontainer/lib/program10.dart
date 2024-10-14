import 'package:flutter/material.dart';

class Program10 extends StatefulWidget {
  const Program10({super.key});

  @override
  State<Program10> createState() => _Program10State();
}

class _Program10State extends State<Program10> {
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
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.amber),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
