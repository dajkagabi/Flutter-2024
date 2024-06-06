// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Első oldal")),
      //Alsó navigációs sáv
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //Főoldal
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Főoldal',
          ),
          //Profil
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          //Beállítások
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Beállítások',
          ),
        ],
      ),

      //Oldalsó navigációs sáv
      /*Drawer(
        backgroundColor: Colors.green[100],
        child: Column(
          children: [
            //DrawerHeader
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
                //Pop
                Navigator.pop(context);
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
      backgroundColor: Colors.green[200], */
    );
  }
}
