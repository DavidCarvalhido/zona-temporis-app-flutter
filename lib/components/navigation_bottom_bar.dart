import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zona_temporis/views/home.dart';
import 'package:zona_temporis/views/calendar.dart';
import 'package:zona_temporis/views/settings.dart';

class NavigationBottomBar extends StatefulWidget {
  NavigationBottomBar({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _NavigationBottomBarState createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
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
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => showModalBottomSheet(
                //enableDrag: false,
                //isDismissible: false,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => Settings(),
              )
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Settings()),  //neste momento aparece um ecra full mode a verde...
              // );
              ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Para remover as labels dos icons do BottomNavBar
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromRGBO(174, 100, 209, 1.0),
        //backgroundColor: Color.fromRGBO(125, 57, 158, 1.0),
        fixedColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //-- A app funciona, mas os icones não aparecem
            icon: SvgPicture.asset('lib/assets/meter_icon.svg'),
            //icon: Icon(Icons.home),
            label: '', //sem texto por baixo dos icones no bottom navigation bar
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/calendar_icon.svg'),
            //icon: Icon(Icons.edit_calendar),
            label: '', //sem texto por baixo dos icones no bottom navigation bar
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }

  // Widget makeDismissble({Widget child}) => GestureDetector(
  //   behavior: HitTestBehavior.opaque,
  //   onTap: () => Navigator.of(context).pop(),
  //   child: GestureDetector(onTap: () {}, child: child,),
  // );

  Widget buildSheet() => Column();
}
