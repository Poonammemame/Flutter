import 'package:flutter/material.dart';

class Program3 extends StatefulWidget {
  const Program3({super.key});

  @override
  State<Program3> createState() => _Program3State();
}

class _Program3State extends State<Program3> {
  Color borderColor = Colors.red;

  void _toggleBorderColor() {
    borderColor = borderColor == Colors.red ? Colors.green : Colors.red;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 7, 193, 1),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleBorderColor,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: borderColor, width: 20),
            ),
          ),
        ),
      ),
    );
  }
}
