import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Lesson%20Screens/Day.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  PanelController _pc = new PanelController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        backdropEnabled: true,
        minHeight: 0,
        controller: _pc,
        panel: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 15, 35, 0),
                child: Image.asset("assets/L1.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 25, 35, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/L2.png"),
                    Image.asset("assets/L3.png"),
                    Image.asset("assets/L4.png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      color: HexColor("#6772E7"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: Day(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 25,
                            color: HexColor("#F9FAFB"),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 25, 35, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/f1.png"),
                    Image.asset("assets/f2.png"),
                    Image.asset("assets/f3.png"),
                    Image.asset("assets/f4.png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 25, 35, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/f1.png"),
                    Image.asset("assets/f2.png"),
                    Image.asset("assets/f3.png"),
                    Image.asset("assets/f4.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
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
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                              "All Lessons",
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 12, 40, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => _pc.open(),
                              child: Image.asset(
                                "assets/2.1.png",
                                width: 130,
                              ),
                            ),
                            Image.asset(
                              "assets/2.1.png",
                              width: 130,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 12, 40, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/2.2.png",
                              width: 130,
                            ),
                            Image.asset(
                              "assets/2.2.png",
                              width: 130,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 12, 40, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/2.2.png",
                              width: 130,
                            ),
                            Image.asset(
                              "assets/2.2.png",
                              width: 130,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 12, 40, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/2.2.png",
                              width: 130,
                            ),
                            Image.asset(
                              "assets/2.2.png",
                              width: 130,
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
        ),
      ),
    );
  }
}
