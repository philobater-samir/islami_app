import 'package:flutter/material.dart';
import 'package:islamy/hadeth.dart';
import 'package:islamy/quran.dart';
import 'package:islamy/radio.dart';
import 'package:islamy/tasbih.dart';

void main() {
  runApp(islamiApp());
}

class islamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Quran.routeName,
      routes: {
        Quran.routeName: (context) => Quran(),
        hadeth.routeName: (context) => hadeth(),
        tasbih.routeName: (context) => tasbih(),
        radio.routeName: (context) => radio()
      },
    );
  }
}
