import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uimockup1/controlelr/animationControllr.dart';
import 'package:uimockup1/screens/bottomScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height_of_container = 540;
  bool bottom_screen_showing = false;
  final imgUrl =
      'https://images.unsplash.com/photo-1621173865362-b3fec79a0458?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bcImage2.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.darken)),
          ),
        ),
        Positioned(
            top: 50,
            left: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(child: Icon(Icons.arrow_back_ios)),
            )),
        Positioned(
            top: 50,
            right: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(child: Icon(Icons.logout)),
            )),
        Positioned(
          top: 120,
          left: 20,
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Collections',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'North',
                  style: TextStyle(
                      fontFamily: 'plusJakartaSans',
                      color: Colors.white,
                      fontSize: 35,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  'Norway',
                  style: TextStyle(
                      fontFamily: 'plusJakartaSans',
                      color: Colors.white,
                      fontSize: 35,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Amazing Trips With Variable Packages for Everyone',
                  style: TextStyle(
                      fontFamily: 'plusJakartaSans',
                      color: Colors.white,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 270,
            left: 20,
            child: Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_city,
                        size: 30,
                        color: Colors.blue,
                      ),
                      Text(
                        '23',
                        style: TextStyle(
                            fontFamily: 'plusJakartaSans',
                            fontSize: 32,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        'Stops',
                        style: TextStyle(
                            fontFamily: 'plusJakartaSans',
                            fontSize: 10,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            )),
        Positioned(
            top: 400,
            left: 20,
            child: Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.speed_outlined,
                        size: 30,
                        color: Colors.blue,
                      ),
                      Text(
                        '23',
                        style: TextStyle(
                            fontFamily: 'plusJakartaSans',
                            fontSize: 32,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        'Speed',
                        style: TextStyle(
                            fontFamily: 'plusJakartaSans',
                            fontSize: 10,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            )),
        Positioned(
          top: height_of_container,
          bottom: 0,
          left: 0,
          right: 0,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: AnimatedContainer(
                height: 800,
                duration: Duration(
                  milliseconds: 450,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: bottom_screen_showing == false
                                ? Icon(Icons.arrow_upward)
                                : Icon(Icons.arrow_downward),
                            onPressed: () {
                              if (bottom_screen_showing == false) {
                                setState(() {
                                  height_of_container =
                                      height_of_container - 430;
                                  bottom_screen_showing = true;
                                });
                              } else {
                                setState(() {
                                  height_of_container = 540;
                                  bottom_screen_showing = false;
                                });
                              }
                            }),
                        Text(
                          'About Trip',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'plusJakartaSans',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'One Of the Most Exciting Experiences to explore Norway at it own beauty. A Perfect Combination of trecking and travelling',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'plusJakartaSans',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'What You Will See',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'plusJakartaSans',
                          ),
                        ),
                        Container(
                          height: 350,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 220,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blueAccent),
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/bcImage2.jpg'),
                                                    fit: BoxFit.cover,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.blueAccent
                                                      .withOpacity(0.75)),
                                              child: Center(
                                                  child: Text(
                                                'Top10',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              'TrollTunga',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Best Cars For Trip',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: Colors.blue),
                          ),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'assets/bcImage2.jpg',
                                        fit: BoxFit.cover,
                                      )
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
