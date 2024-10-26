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
        title: Text("Container",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 7, 193, 1),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(offset: Offset(0, 4), color: Colors.black)],
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
