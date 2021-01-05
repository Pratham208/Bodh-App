import 'package:flutter/material.dart';
import 'package:Bodh/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
      pageController.previousPage(
          duration: 300.milliseconds, curve: Curves.ease);
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/1.png', 'Lorem Ipsum Dolor',
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr. '),
    OnboardingInfo('assets/2.png', 'Lorem Ipsum Dolor',
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr. '),
    OnboardingInfo('assets/3.png', 'Lorem Ipsum Dolor',
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr. ')
  ];
}
