import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Lesson%20Screens/content.dart';
import 'package:Bodh/Practice%20Screens/MCQ/instructions.dart';
import 'package:Bodh/Translate/vt.dart';
import 'package:page_transition/page_transition.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class TT extends StatefulWidget {
  @override
  _TTState createState() => _TTState();
}

class _TTState extends State<TT> {
  var color1 = Colors.white;
  var color2 = Colors.black;
  double _opacity = 0;

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
                              Icon(Icons.close),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog<void>(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Image.asset("assets/T1.png"),
                                        GestureDetector(
                                          child: Image.asset("assets/T2.png"),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child: VT(),
                                              ),
                                            );
                                          },
                                        ),
                                        Image.asset("assets/T3.png"),
                                        Image.asset("assets/T4.png"),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Close'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Text to Text Translate",
                                style: TextStyle(
                                  color: HexColor("#6772E7"),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_drop_down_circle_rounded,
                                color: HexColor("#6772E7"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Input",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              "English",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 10, 35, 35),
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Opacity(
                              opacity: _opacity,
                              child: Text(
                                "Trophy",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.compare_arrows,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Output",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              "Sanskrit",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 10, 35, 35),
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Opacity(
                              opacity: _opacity,
                              child: Text(
                                "Trophy",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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
