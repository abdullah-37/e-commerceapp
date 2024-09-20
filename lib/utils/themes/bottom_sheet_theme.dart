import 'package:flutter/material.dart';

class MyBottomSheetTheme {
  MyBottomSheetTheme._();

//Light Bottom Sheat Theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.white,
      modalBackgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      constraints: const BoxConstraints(minWidth: double.infinity));

//Dark Bottom Sheat Theme

  static BottomSheetThemeData darkBottomSHeatTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      constraints: const BoxConstraints(minWidth: double.infinity));
}
