import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Practice%20Screens/FILL/Day.dart';
import 'package:Bodh/Practice%20Screens/FRIENDS/Day.dart';
import 'package:Bodh/Practice%20Screens/MATCH/Day.dart';
import 'package:Bodh/Practice%20Screens/MCQ/Day.dart';
import 'package:Bodh/Practice%20Screens/TRANSLATE/Day.dart';
import 'package:Bodh/Practice%20Screens/TRUE/Day.dart';
import 'package:page_transition/page_transition.dart';

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: HexColor("#F9FAFB"),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 80, 10),
                              child: Row(
                                children: [
                                  Icon(Icons.search),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Search Anything",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset("assets/Profile.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                "assets/P1.png",
                                width: 80,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: Day1(),
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/P2.png",
                                width: 80,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: Day2(),
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/P3.png",
                                width: 80,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: Day3(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                "assets/P4.png",
                                width: 80,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: Day4(),
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/P5.png",
                                width: 80,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: Day5(),
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/P6.png",
                                width: 80,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: Day6(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Image.asset("assets/P8.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pending Practice",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "See Full List",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 12, 40, 0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/P7.png",
                            width: 130,
                          ),
                          Image.asset(
                            "assets/P7.png",
                            width: 130,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Previous Results",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "See Full List",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Image.asset("assets/P9.png"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
