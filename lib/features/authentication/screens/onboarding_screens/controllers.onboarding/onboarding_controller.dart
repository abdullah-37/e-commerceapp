import 'package:e_commerce_app/features/authentication/screens/login_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance =>
      Get.find(); //This provides a singleton instance of
  //  the controller, ensuring only one instance is used throughout the app.

  // variables
  final pagecontroller = PageController();
  Rx<int> currentpageindex = 0.obs;

  // Update Current index when page scroll
  void updatePageIndicator(index) => currentpageindex.value =
      index; //This index is comming from the onpagechange function in pageview widget which returns an integer when page is changed

// jump to the dot specific page
  void dotNavigationClick(index) {
    currentpageindex.value = index;
    pagecontroller.jumpTo(index);
  }

  // next Page
  void nextPage() {
    if (currentpageindex.value == 2) {
      Get.offAll(
          const LoginScreen()); //get.off all will forget all previous screens means you cant go back :(
    } else {
      int page = currentpageindex.value + 1;
      pagecontroller.animateToPage(page,
          duration: const Duration(milliseconds: 400), curve: Curves.linear);
    }
  }

  // Skip Page
  void skipPage() {
    currentpageindex.value = 2;
    pagecontroller.jumpToPage(2);
  }
}
