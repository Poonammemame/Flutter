import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColor());
}

class AppBarColor extends StatefulWidget {
  const AppBarColor({super.key});

  @override
  State<AppBarColor> createState() => _AppBarColorState();
}

class _AppBarColorState extends State<AppBarColor> {
  bool changecolor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("AppBar Color App"),
            centerTitle: true,
            backgroundColor: changecolor ? Colors.blue : Colors.orange,
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Change AppBar Color"),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (changecolor == true) {
                changecolor = false;
              } else {
                changecolor = true;
              }
              setState(() {});
            },
            child: const Icon(Icons.add),
          )),
    );
  }
}
