import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Program3 extends StatefulWidget {
  const Program3({super.key});

  @override
  State<Program3> createState() => _Program3State();
}

class _Program3State extends State<Program3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          //  padding: EdgeInsets.all(10.0), // Adjust padding here
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              )),
        ),
      ),
    );
  }
}
