import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:Bodh/Main/Nav.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:toggle_bar_button/toggle_bar_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#6772E7"),
      body: SlidingUpPanel(
        color: HexColor("#F9FAFB"),
        minHeight: 345,
        maxHeight: 395,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        backdropEnabled: true,
        panel: Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
          child: ToggleBarButton(
            selectedBackgroundColor: HexColor("#6772E7"),
            backgroundColor: HexColor("#FFFFFF"),
            selectedTextColor: HexColor("#F9FAFB"),
            textColor: HexColor("#000000"),
            borderColor: Colors.transparent,
            radius: 10,
            tabItems: ["Login", 'Sign Up'],
            tabContentItems: <Widget>[
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Email Address",
                            style: TextStyle(
                              color: HexColor("#6772E7"),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: TextFormField(
                        initialValue: "demo@gmail.com",
                        decoration: InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                              color: HexColor("#6772E7"),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: TextFormField(
                        obscureText: true,
                        initialValue: "demo@gmail.com",
                        decoration: InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 25, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: HexColor("#6772E7"),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: HexColor("#6772E7"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Nav(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                color: HexColor("#F9FAFB"),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "- OR -",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/fb.png"),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset("assets/gg.png"),
                      ],
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Email Address",
                            style: TextStyle(
                              color: HexColor("#6772E7"),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(),
                        initialValue: "demo@gmail.com",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                              color: HexColor("#6772E7"),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: TextFormField(
                        obscureText: true,
                        initialValue: "demo@gmail.com",
                        decoration: InputDecoration(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: HexColor("#6772E7"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Nav(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 18,
                                color: HexColor("#F9FAFB"),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "- OR -",
                          style: TextStyle(
                            color: HexColor("#6772E7"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/fb.png"),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset("assets/gg.png"),
                      ],
                    )
                  ],
                ),
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
                        width: 280,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Enter your Login Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
