import 'package:flutter/material.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/Quran.dart';
import 'package:islamy/hadeth.dart';
import 'package:islamy/home_screen.dart';
import 'package:islamy/radio.dart';
import 'package:islamy/settings.dart';
import 'package:islamy/tasbih.dart';

void main() {
  runApp(islamiApp());
}

class islamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName: (context) => homeScreen(),
        Quran.routeName: (context) => Quran(),
        hadeth.routeName: (context) => hadeth(),
        tasbih.routeName: (context) => tasbih(),
        radio.routeName: (context) => radio(),
        settings.routeName: (context) => settings()
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
