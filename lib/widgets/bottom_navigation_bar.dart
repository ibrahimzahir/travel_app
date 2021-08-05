import 'package:flutter/material.dart';
import '../constants/color_constant.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.home_rounded,
    ),
    Icon(
      Icons.favorite_border_rounded,
    ),
    Icon(
      Icons.add_circle_outline_rounded,
    ),
    Icon(
      Icons.notifications_none_rounded,
    ),
    Icon(
      Icons.person_outline_rounded,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
            color: tBottomNaviBar,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border_rounded,
            color: tBottomNaviBar,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline_rounded,
            color: tBottomNaviBar,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none_rounded,
            color: tBottomNaviBar,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_rounded,
            color: tBottomNaviBar,
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
