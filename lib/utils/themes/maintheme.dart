import 'package:e_commerce_app/utils/themes/appbar_theme.dart';
import 'package:e_commerce_app/utils/themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/themes/elevated_btn_theme.dart';
import 'package:e_commerce_app/utils/themes/inputdecorationtheme.dart';
import 'package:e_commerce_app/utils/themes/text_theme.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme._(); //private constructor

  //----------------Light Theme----------------
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MytextTheme.lightTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.lightAppbarTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: MyInputDecorationTheme.lightinputDecoration,
  );

  //----------------Dark Theme-----------------------
  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MytextTheme.darkTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.darkAppbarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSHeatTheme,
    inputDecorationTheme: MyInputDecorationTheme.darkinputDecoration,
  );
}
