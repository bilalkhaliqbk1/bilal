import 'package:bilal/about.dart';
import 'package:bilal/mainscr.dart';
import 'package:bilal/project.dart';
import 'package:bilal/splesh_scr.dart';
import 'package:flutter/material.dart';



void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Soho",
      ),
      debugShowCheckedModeBanner: false,
      home:  splesh(),
    );
  }
}
