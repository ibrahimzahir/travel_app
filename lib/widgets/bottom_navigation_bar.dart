import 'package:flutter/material.dart';
import '../constants/color_constant.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: tFillColor,
        boxShadow: [
          BoxShadow(
            color: tBottomNaviBar,
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft:
        // ),
      ),
    );
  }
}
