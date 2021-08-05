import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../constants/style_constant.dart';
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
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Good morning",
                    style: titleStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Zeeshan!", style: nameTtleStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
