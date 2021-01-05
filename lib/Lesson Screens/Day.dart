import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Lesson%20Screens/content.dart';
import 'package:page_transition/page_transition.dart';

class Day extends StatelessWidget {
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
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            children: [
                              Icon(Icons.keyboard_backspace_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Lesson 1",
                            style: TextStyle(
                              color: HexColor("#6772E7"),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Image.asset("assets/calender.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Image.asset("assets/d1.png"),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Content(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Image.asset("assets/d1.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Image.asset("assets/d1.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Image.asset("assets/d1.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Image.asset("assets/d1.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
