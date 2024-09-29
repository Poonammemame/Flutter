import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("INDIAN FLAG"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 320, width: 5, color: Colors.black),
            Column(
              children: [
                const SizedBox(
                  height: 155,
                ),
                Container(
                  height: 40,
                  width: 200,
                  color: Colors.orange,
                ),
                Container(
                  height: 40,
                  width: 200,
                  color: Colors.white,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png"),
                ),
                Container(
                  height: 40,
                  width: 200,
                  color: Colors.green,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
