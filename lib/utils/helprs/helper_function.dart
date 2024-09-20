import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class MyHelperfunctions {
  // Get Colors
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'blue') {
      return Colors.blue;
    }
    return null;
  }

// Custom Snackbar

  static void showSnakbar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  //Show Alert
  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('ok'),
              )
            ],
          );
        });
  }

  //  Is Dark Mode
  static bool isDarkmode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Screen Size
  static Size getScreenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // Screen Height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Screen Width

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }
}
