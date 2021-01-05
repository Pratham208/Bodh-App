import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Lesson%20Screens/Day.dart';
import 'package:Bodh/Main/Nav.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:toggle_bar_button/toggle_bar_button.dart';

class Leaderboard extends StatelessWidget {
  PanelController _pc = new PanelController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#6772E7"),
      body: SlidingUpPanel(
        maxHeight: 600,
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
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset("assets/group.png"),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/4.png",
                        width: 300,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                            child: Text(
                              "Week",
                              style: TextStyle(
                                fontSize: 20,
                                color: HexColor("#6772E7"),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor("#6772E7"),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                            child: Text(
                              "Month",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  height: 525,
                  decoration: BoxDecoration(
                    color: HexColor("#FAFAFA"),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/f5.png",
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/f5.png",
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/f5.png",
                      width: 80,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                            child: Image.asset(
                              "assets/f6.png",
                              width: 320,
                            ),
                          ),
                          onTap: () => _pc.open(),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                          child: Image.asset(
                            "assets/f6.png",
                            width: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                          child: Image.asset(
                            "assets/f6.png",
                            width: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                          child: Image.asset(
                            "assets/f6.png",
                            width: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                          child: Image.asset(
                            "assets/f6.png",
                            width: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                          child: Image.asset(
                            "assets/f6.png",
                            width: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                          child: Image.asset(
                            "assets/f6.png",
                            width: 320,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_backspace_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
