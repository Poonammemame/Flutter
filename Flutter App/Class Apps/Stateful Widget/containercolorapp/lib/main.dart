import "package:flutter/material.dart";

void main() {
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget {
  const ContainerColorApp({super.key});
  @override
  State<ContainerColorApp> createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State<ContainerColorApp> {
  bool ChangeColor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("ContainerColorApp"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 150,
          color: ChangeColor ? Colors.amber : Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (ChangeColor == true) {
            ChangeColor = false;
          } else {
            ChangeColor = true;
          }
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    ));
  }
}
