import 'package:flutter/material.dart';
//import 'program2.dart';
//import 'program3.dart';
//import 'Program4.dart';
//import 'program5.dart';
//import 'program6.dart';
import 'program10.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Program10());
  }
}
