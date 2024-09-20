import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyDevice {
  // Hide keyboard function
  static void hidekeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // Set Status bar color
  static Future<void> setStatusbarcolor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  //Land Scape Orientation
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  //Potrait orientation
  static bool isPotraitOrientation(BuildContext context) {
    final viewInsects = View.of(context).viewInsets;
    return viewInsects.bottom != 0;
  }

  //Set FullScreen
  static void setFullscreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  //Get Screen Height
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Get Screen WIdth
  static double getScreenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  //Get Pixel Ratio
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  //Get Status Bar Height
  static double getStatusbarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  //Get bottom navigation Bar Height
  static double getBottomnavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  // Get AppBar Height
  static double getAppbarHeight() {
    return kToolbarHeight;
  }

  // Get Keyboard Height
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // Is Keyboard visible
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  // Is pysical device

  static Future<bool> isPhysicaldevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  //Vibration set
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate);
  }

  // Set preferred orientation
  static Future<void> setPreferredOrientation(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // Show Status Bar
  static void showstatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  // Hide Status Bar
  static void hidestatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // Has Internet Connection
  static Future<bool> hasInternet() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // Is IOS
  static bool isIos() {
    return Platform.isIOS;
  }

  // Is Android
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Launch Any URL in App
  static void launchURL(String myurl) async {
    if (await canLaunchUrlString(myurl)) {
      await launchUrlString(myurl);
    } else {
      throw 'Could not launch $myurl';
    }
  }
}
