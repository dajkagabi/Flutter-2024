// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = [
    "Narancs",
    "Banán",
    "Alma",
    "Cseresznye",
    "Citrom",
    "Kiwi",
    "Avokádó",
    "Ananász",
    "Mangó",
    "Lime",
    "Málna"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //   backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          title: Text("Ez egy AppBar"),
          backgroundColor: Colors.green[600],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(names[index]),
                )),
      ),
    );
  }
}
