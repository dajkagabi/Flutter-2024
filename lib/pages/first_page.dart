// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Első oldal")),
      drawer: Drawer(
        backgroundColor: Colors.green[100],
        child: Column(
          children: [
            //
            DrawerHeader(
              child: Icon(
                Icons.login,
                size: 45,
              ),
            ),
            //Kezdőlap lista
            ListTile(
              leading: Icon(Icons.home),
              title: Text("K E Z D Ő L A P"),
              onTap: () {
                //Ikonok navigáció
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            //Beállítás oldal
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("B E Á L L Í T Á S"),
              //Ikonok navigáció
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[200],
    );
  }
}
