import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  static const String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/image/splash@3x.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
