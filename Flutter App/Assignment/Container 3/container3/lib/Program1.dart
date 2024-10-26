import 'package:flutter/material.dart';

class Program1 extends StatelessWidget {
  const Program1({super.key});

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
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, 
            right: 20,top: 20,bottom: 20),
            child: Image.asset(
              "diwali.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
