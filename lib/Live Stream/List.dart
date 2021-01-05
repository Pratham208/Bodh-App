import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Lesson%20Screens/Day.dart';
import 'package:Bodh/Live%20Stream/content.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class List1 extends StatefulWidget {
  @override
  _List1State createState() => _List1State();
}

class _List1State extends State<List1> {
  PanelController _pc = new PanelController();
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
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            "All Streams",
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
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Image.asset("assets/6.png"),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Content1(),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Learn from Basics",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bookmark_outline,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.share,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download_outlined,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Image.asset("assets/6.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Learn from Basics",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bookmark_outline,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.share,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download_outlined,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Image.asset("assets/6.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Learn from Basics",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bookmark_outline,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.share,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download_outlined,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Image.asset("assets/6.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Learn from Basics",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bookmark_outline,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.share,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download_outlined,
                            ),
                          ],
                        ),
                      ],
                    ),
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
