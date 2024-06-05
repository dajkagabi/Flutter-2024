// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        //   backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          title: Text("Ez egy AppBar"),
          backgroundColor: Colors.green[600],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        body: Column(
          children: [
            //1 box
            Container(
              height: 200,
              color: Colors.green[300],
            ),
            //2 box
            Container(
              height: 200,
              color: Colors.green[200],
            ),
            //3 box
            Expanded(
              child: Container(
                height: 200,
                color: Colors.green[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
