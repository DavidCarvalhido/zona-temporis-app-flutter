import 'package:flutter/material.dart';
import 'package:zona_temporis/views/home.dart';
import 'package:zona_temporis/views/calendar.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Calendar(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Mudar isto'), // tentar alterar para meter os titulos de cada fragmento (PARA ZONA TEMPORAL/CALENDAR)
        elevation: 0.0,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Para remover as labels dos icons do BottomNavBar
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.deepPurple,
        fixedColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', //tentar remover o texto por baixo dos icones na barra
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '', //tentar remover o texto por baixo dos icones na barra
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
