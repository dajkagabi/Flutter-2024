// ignore_for_file: prefer_const_constructors,

import 'package:base_2024/pages/first_page.dart';
import 'package:base_2024/pages/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
}
