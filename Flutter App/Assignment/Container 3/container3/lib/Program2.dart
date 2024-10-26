import 'package:flutter/material.dart';

class Program2 extends StatelessWidget {
  const Program2({super.key});

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
      body: Container(
        height: 800,
        width: 1600,
        decoration: const BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
              image: AssetImage(
                "assets/i.jpg",
              ),
              fit: BoxFit.cover),
        ),
        child: const Center(
          child: Text(
            "CORE 2 WEB",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
