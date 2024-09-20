import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  //App Basic colors
  static const Color primary = Color(0x0ff4b8ff);
  static const Color secondary = Colors.yellow;
  static const Color accent = Colors.grey;

  //Text Colors
  static const Color textprimary = Color(0xff333333);
  static const Color textsecondary = Color.fromARGB(255, 129, 128, 128);
  static const Color textwhite = Colors.white;

  //Gradients
  static const Gradient lineargradiant = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Colors.blue,
      Colors.yellow,
    ],
  );

  //Background colors
  static const Color light = Colors.white;
  static const Color dark = Colors.black;
  static const Color primarybg = Colors.white;

  //Button colors
  static const Color buttonprimary = Colors.blue;
  static const Color buttonsecondary = Colors.grey;
  static const Color buttondisabled = Colors.white;

  //Border colors
  static const Color borderprimary = Colors.white;
  static const Color bordersecondary = Colors.black;

  //Error and Validation colors
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color info = Colors.blue;

  //Neutral shades
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
}
