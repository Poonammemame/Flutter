import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Program5 extends StatefulWidget {
  const Program5({super.key});

  @override
  State<Program5> createState() => _Program5State();
}

class _Program5State extends State<Program5> {
  bool color = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tappable Container'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (color == true) {
              color = false;
            } else {
              if (color == false) {
                color = true;
              }
            }
            setState(() {});
          },
          child: Container(
            width: 200,
            height: 100,
            color: color ? Colors.red : Colors.blue, // Change color on tap
            alignment: Alignment.center,
            child: Text(
              color ? 'Click me!' : 'Container Tapped', // Change text on tap
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
