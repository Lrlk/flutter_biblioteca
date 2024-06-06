// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_biblioteca/screens/book_screen.dart';

//ab
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: Colors.deepPurple[200],
          )),
      home: BookScreen(),
    );
  }
}
