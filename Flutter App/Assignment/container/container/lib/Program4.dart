import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Program4 extends StatefulWidget {
  const Program4({super.key});

  @override
  State<Program4> createState() => _Program4State();
}

class _Program4State extends State<Program4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          //  padding: EdgeInsets.all(10.0), // Adjust padding here
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Padding(
              padding: EdgeInsets.only(left: 4), child: Text("Your Name")),
        ),
      ),
    );
  }
}
