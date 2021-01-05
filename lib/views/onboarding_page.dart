import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:Bodh/Details.dart/Login.dart';
import 'package:Bodh/controllers/onboarding_controller.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F9FAFB"),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            _controller.onboardingPages[index].imageAsset),
                        SizedBox(height: 42),
                        Text(
                          _controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 22),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64.0),
                          child: Text(
                            _controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 110,
                    ),
                  ],
                );
              },
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _controller.onboardingPages.length,
                          (index) => Obx(() {
                            return Container(
                              margin: const EdgeInsets.all(4),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color:
                                    _controller.selectedPageIndex.value == index
                                        ? HexColor("#6772E7")
                                        : HexColor("#9AA1ED"),
                                shape: BoxShape.circle,
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: HexColor("#6772E7"),
                            onPressed: _controller.forwardAction,
                            child: Obx(
                              () {
                                return Text(
                                  _controller.isLastPage ? 'Previous' : 'Next',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: HexColor("#F9FAFB"),
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Login(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
