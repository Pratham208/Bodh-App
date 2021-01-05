import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Lesson%20Screens/content.dart';
import 'package:Bodh/Practice%20Screens/MCQ/instructions.dart';
import 'package:page_transition/page_transition.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class Quiz6 extends StatefulWidget {
  @override
  _Quiz6State createState() => _Quiz6State();
}

class _Quiz6State extends State<Quiz6> {
  var color1 = Colors.white;
  var color2 = Colors.black;

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
                        Padding(
                          padding: const EdgeInsets.only(right: 108),
                          child: Text(
                            "Choose the Correct",
                            style: TextStyle(
                              color: HexColor("#6772E7"),
                              fontSize: 20,
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
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/f8.png",
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Image.asset("assets/f9.png"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/f9.png"),
                            SizedBox(
                              width: 40,
                            ),
                            Image.asset("assets/f8.png"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "What do you see?",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Choose the correct answer",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Duck",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Boat",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: color1,
                            onPressed: () {
                              setState(() {
                                color1 = Colors.green;
                                color2 = Colors.white;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Trophy",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: color2,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Lamp",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: HexColor("#6772E7"),
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Image.asset("assets/g7.png"),
                                          Image.asset("assets/f6.png"),
                                          Image.asset("assets/f6.png"),
                                          Image.asset("assets/f6.png"),
                                          Image.asset("assets/f6.png"),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text('Close'),
                                        onPressed: () {
                                          int count = 0;
                                          Navigator.of(context)
                                              .popUntil((_) => count++ >= 4);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: HexColor("#6772E7"),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
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
