import 'package:flutter/material.dart';

class MyAppBarTheme {
  MyAppBarTheme._();

//Light Appbar Theme
  static const lightAppbarTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 25),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 25),
  );
//dark Appbar Theme
  static const darkAppbarTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 25),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 25),
  );
}
