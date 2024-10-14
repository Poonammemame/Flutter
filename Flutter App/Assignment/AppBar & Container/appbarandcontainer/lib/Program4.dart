import 'package:flutter/material.dart';

class Program4 extends StatefulWidget {
  const Program4({super.key});

  @override
  State<Program4> createState() => _Program4State();
}

class _Program4State extends State<Program4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
