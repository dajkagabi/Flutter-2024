// ignore_for_file: prefer_const_constructors

import 'package:base_2024/pages/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Első oldal")),
      backgroundColor: Colors.green[200],
      body: Center(
        child: ElevatedButton(
            child: Text("Tovább a második oldalra."),
            onPressed: () {
              //Navigáció
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ));
            }),
      ),
    );
  }
}
