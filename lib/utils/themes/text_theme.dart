import 'package:flutter/material.dart';

class MytextTheme {
  MytextTheme._(); //making constructore private

//Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
      //dont use headline 1 2 3 etc, use large small
      headlineLarge:
          const TextStyle().copyWith(fontSize: 32, color: Colors.black),
      headlineMedium:
          const TextStyle().copyWith(fontSize: 25, color: Colors.black),
      titleLarge: const TextStyle().copyWith(fontSize: 16, color: Colors.black),
      bodyLarge: const TextStyle().copyWith(fontSize: 14, color: Colors.black));

//Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge:
          const TextStyle().copyWith(fontSize: 32, color: Colors.white),
      titleLarge: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
      bodyLarge: const TextStyle().copyWith(fontSize: 14, color: Colors.white));
}
