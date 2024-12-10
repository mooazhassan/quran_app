import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class MyTheme {
  static ThemeData light = ThemeData(
    primaryColor: ColorsManger.gold,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: ColorsManger.gold,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 50, color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: ColorsManger.gold,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      elevation: 20,
    ),
    textTheme: const TextTheme(
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
      bodyMedium: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w400,
        color: Color(0xff242424),
      ),
      headlineMedium: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: Color(0xff242424),
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xff242424),
      ),
      bodyLarge: TextStyle(
          fontSize: 21, fontWeight: FontWeight.w500, color: ColorsManger.gold),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: ColorsManger.gold.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 14,
    ),
    dividerColor: ColorsManger.gold,
    dividerTheme: DividerThemeData(
      color: ColorsManger.gold,
    ),
   indicatorColor: Colors.black,
  );
  static ThemeData dark= ThemeData(
    primaryColor: ColorsManger.dark,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: ColorsManger.yellow,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 50, color: Colors.white),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorsManger.yellow,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: ColorsManger.dark,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManger.dark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      elevation: 20,
    ),
    textTheme: const TextTheme(
      labelMedium: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: ColorsManger.yellow,
      ),
      titleMedium: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        color:  ColorsManger.yellow,
      ),
      bodyMedium: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w400,
        color:  Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color:  Colors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color:  Colors.white,
      ),
      bodyLarge: TextStyle(
          fontSize: 21, fontWeight: FontWeight.w500, color: ColorsManger.yellow),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: ColorsManger.dark.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 14,
    ),
    dividerColor: ColorsManger.yellow,
    dividerTheme: DividerThemeData(
      color: ColorsManger.yellow,
    ),
    indicatorColor:Colors.white,
  );
}
