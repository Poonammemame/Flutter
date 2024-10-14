import 'package:flutter/material.dart';

class Program3 extends StatefulWidget {
  const Program3({super.key});

  @override
  State<Program3> createState() => _Program3State();
}

class _Program3State extends State<Program3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Hello Core2web"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 360,
        ),
      ),
    );
  }
}
