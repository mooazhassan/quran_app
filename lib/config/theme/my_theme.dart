import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsManger.goldColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 50, color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: ColorsManger.goldColor,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManger.goldColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      elevation: 20,
    ),
    textTheme:const TextTheme(
      labelMedium: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: Color(0xff242424),
      ),
      titleMedium: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        color: Color(0xff242424),
      ),
      bodyLarge: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: ColorsManger.goldColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 14,
    ),
  );
}
