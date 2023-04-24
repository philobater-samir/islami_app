import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color colorBlack = Color(0xff242424);
  static Color colorWhite = Color(0xffFFFFFF);

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: colorBlack)),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightPrimary,
          selectedItemColor: colorBlack,
          unselectedItemColor: colorWhite,
          showUnselectedLabels: true));

  static ThemeData darkTheme = ThemeData();
}
