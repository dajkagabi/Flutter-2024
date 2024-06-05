// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /* List names = [
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
*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          //   backgroundColor: Colors.yellow[50],
          appBar: AppBar(
            title: Text("Ez egy AppBar"),
            backgroundColor: Colors.green[200],
            elevation: 0,
            leading: Icon(Icons.menu),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
          ),
          body: Stack(
            children: [
              //nagy box
              Container(
                height: 300,
                width: 300,
                color: Colors.green[900],
              ),
              //közepes box
              Container(
                height: 200,
                width: 200,
                color: Colors.green[800],
              ),
              //kis box
              Container(
                height: 100,
                width: 100,
                color: Colors.green[700],
              ),
            ],
          )),
    );
  }
}
