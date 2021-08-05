import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../constants/color_constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tBackgroundColor,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBarTravel(),
    );
  }
}
