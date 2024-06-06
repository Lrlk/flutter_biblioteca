// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_biblioteca/screens/authentication_screen.dart';
//import 'package:flutter_biblioteca/screens/book_screen.dart';

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
      home: AuthenticationScreen(),
    );
  }
}
