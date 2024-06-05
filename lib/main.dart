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
        body: GridView.builder(
            itemCount: 64,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
            itemBuilder: (context, index) => Container(
                  color: Colors.green,
                  margin: EdgeInsets.all(2),
                )),
      ),
    );
  }
}
