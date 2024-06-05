// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //Koppints rám! - függvény meghívása.
  void userTapped() {
    print("Felhasználó rá koppintott!");
  }

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
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green[200],
              child: Center(child: Text("Koppints rám!")),
            ),
          ),
        ),
      ),
    );
  }
}
