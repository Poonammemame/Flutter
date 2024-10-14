import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Program1 extends StatefulWidget {
  const Program1({super.key});

  @override
  State<Program1> createState() => _Program1State();
}

class _Program1State extends State<Program1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(
            child: Text(
              "Container",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red),
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
