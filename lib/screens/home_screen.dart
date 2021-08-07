import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../models/destinations_model.dart';
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
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: tBackgroundColor,
      //   elevation: 0,
      // ),
      bottomNavigationBar: BottomNavigationBarTravel(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 16.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Good morning",
                      style: hiTtleStyle,
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
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: map<Widget>(
                            carouseldta,
                            (index, image) {
                              return Container(
                                alignment: Alignment.centerLeft,
                                height: 6,
                                width: 6,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentIndex == index
                                      ? tbaseColor
                                      : tGreyCircleColor,
                                ),
                              );
                            },
                          ),
                        ),
                        Text('More', style: txtMoreStyle),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Services",
                      style: hiTtleStyle,
                    ),
                  ],
                ),
              ),
              Container(
                height: 144,
                margin:
                    EdgeInsets.only(left: 16, right: 8, top: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 12),
                            height: 60,
                            padding: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              color: tFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: tBorderColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: tbaseColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.flight_takeoff_rounded,
                                        color: tFillColor,
                                      ),
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 4.0),
                                  child: Text('Flights', style: titleStyle),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 12),
                            height: 60,
                            padding: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              color: tFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: tBorderColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: tbaseColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.hotel_rounded,
                                        color: tFillColor,
                                      ),
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 4.0),
                                  child: Text('Hotels', style: titleStyle),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 12),
                            height: 60,
                            padding: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              color: tFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: tBorderColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: tbaseColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.directions_car_rounded,
                                        color: tFillColor,
                                      ),
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 4.0),
                                  child: Text('Taxi', style: titleStyle),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 12),
                            height: 60,
                            padding: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              color: tFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: tBorderColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: tbaseColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.restaurant_menu_rounded,
                                        color: tFillColor,
                                      ),
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 4.0),
                                  child: Text('Restuarents', style: titleStyle),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Destinations",
                      style: hiTtleStyle,
                    ),
                  ],
                ),
              ),
              Container(
                height: 190,
                child: ListView.builder(
                  itemCount: popDestinations.length,
                  padding: EdgeInsets.only(left: 16, right: 16, top: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contex, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 190,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: tBorderColor),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero,
                            ),
                            child: Image.asset(
                              popDestinations[index].image,
                              height: 100,
                              width: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 8,
                                  right: 4,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(popDestinations[index].name ?? '',
                                        style: txtMoreStyle),
                                    SizedBox(height: 8),
                                    Text(popDestinations[index].island ?? ''),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
