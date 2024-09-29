import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  int _counter = 0;
  List playersList = [
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRhCmuvCm-2trK_7ykaGCpKHStfchevb9uoAUu8egiHuxNLcEfePiW93IwVob-9Sm41cs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3MuEVA-Bv58X1YBp6TArCJ7k3VL5NBJB0TQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyoTQOFajpbILTrW_j2ltVV_47-Ew8JT19rA&s",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Players App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                playersList[_counter],
                height: 500,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_counter < playersList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
