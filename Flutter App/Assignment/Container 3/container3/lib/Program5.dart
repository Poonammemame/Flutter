import 'package:flutter/material.dart';

class Program5 extends StatefulWidget {
  const Program5({super.key});

  @override
  State<Program5> createState() => _Program5State();
}

class _Program5State extends State<Program5> {
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
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                stops: [0.5, 0.5],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              ),
        ),
      ),
    );
  }
}
