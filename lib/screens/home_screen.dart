import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../models/carousel_model.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../constants/style_constant.dart';
import '../constants/color_constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];

    for (var i = 0; i < list.length; i++) {
      result.add(
        handler(i, list[i]),
      );
    }
  }

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
              padding: const EdgeInsets.only(left: 16.0, right: 16),
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
                  Text("Zeeshan", style: nameTtleStyle),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(
                          () {
                            _currentIndex = index;
                          },
                        );
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carouseldta.length,
                      itemBuilder: (BuildContext contex, index) {
                        return Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(carouseldta[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
