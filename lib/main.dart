import 'package:flutter/material.dart';
import 'package:islamy/splash_screen.dart';

void main() {
  runApp(islamiApp());
}

class islamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName: (context) => splashScreen(),
      },
    );
  }
}
