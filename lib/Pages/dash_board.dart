import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'dart:ui' as ui;

import 'Auth/auth_page.dart';
import 'inc_exp_page.dart';
import 'profile_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List _widgetOptions = [
    IncExpPage(),
    Text(
      'Money',
      style: optionStyle,
    ),
    Text(
      'Secure',
      style: optionStyle,
    ),
    ProfilePage(),
    Text(
      'Setting',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(
            onPressed: () {
              Get.to(AuthPage());
            },
            icon: Icon(
              Icons.chevron_left,
              size: 50,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 50,
              ))
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 45,
        unselectedIconTheme: IconThemeData(color: Colors.black38),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart_sharp,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.currency_exchange,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.health_and_safety,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade900,
        onTap: _onItemTapped,
      ),
    );
  }
}
