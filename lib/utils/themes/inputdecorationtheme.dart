import 'package:flutter/material.dart';

class MyInputDecorationTheme {
  static const lightinputDecoration = InputDecorationTheme(
    labelStyle: TextStyle(fontWeight: FontWeight.w900),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.black)),
  );

  static const darkinputDecoration = InputDecorationTheme(
    labelStyle: TextStyle(fontWeight: FontWeight.w900),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 2, color: Colors.white),
    ),
  );
}
