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
            title: const Text(
              "Column With Scroll",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                    "https://wallpapers.com/images/hd/1920x1080-aesthetic-exx6pl8lkq9ai9p1.jpg"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network(
                    "https://images4.alphacoders.com/134/1347180.png"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1530103043960-ef38714abb15?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YWVzdGhldGljfGVufDB8fDB8fHww"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
              ],
            ),
          )),
    );
  }
}
