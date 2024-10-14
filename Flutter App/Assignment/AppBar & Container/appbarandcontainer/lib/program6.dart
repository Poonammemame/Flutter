import 'package:flutter/material.dart';

class Program6 extends StatefulWidget {
  const Program6({super.key});

  @override
  State<Program6> createState() => _Program6State();
}

class _Program6State extends State<Program6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Container Scroll"),
          backgroundColor: const Color.fromARGB(255, 7, 255, 77),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepPurpleAccent,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.pink,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ));
  }
}
