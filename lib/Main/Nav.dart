import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Main/Learn.dart';
import 'package:Bodh/Main/Practice.dart';
import 'package:Bodh/Main/Profile.dart';
import 'package:Bodh/Main/Translate.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Learn(),
    Practice(),
    Translate(),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        selectedItemColor: HexColor("#6772E7"),
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: "Practice",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.translate),
            label: "Translate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      backgroundColor: HexColor("#F9FAFB"),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
