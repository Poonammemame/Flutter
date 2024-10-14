import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Program2 extends StatefulWidget {
  const Program2({super.key});

  @override
  State<Program2> createState() => _Program2State();
}

class _Program2State extends State<Program2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          //  padding: EdgeInsets.all(10.0), // Adjust padding here
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.teal, // You can choose any color you like
                  width: 5.0,
                ),
              ),
              color: Colors.amber),
          child: Center(
            child: const Text(
              "Container",
            ),
          ),
        ),
      ),
    );
  }
}
