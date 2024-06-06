// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:base_2024/pages/home_page.dart';
import 'package:base_2024/pages/profile_page.dart';
import 'package:base_2024/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //Indexelés
  int _selectedIndex = 0;

  //State
  void _navigateBottomBAr(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //Kezdőlap
    HomePage(),
    //Profil
    ProfilePage(),

    //Beállítások
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Első oldal")),
      body: _pages[_selectedIndex],
      //Alsó navigációs sáv
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBAr,
        items: [
          //Főoldal
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Kezdőlap',
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
            //Főoldal lista
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
