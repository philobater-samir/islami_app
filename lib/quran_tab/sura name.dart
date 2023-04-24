import 'package:flutter/material.dart';

class suraName extends StatelessWidget {
  String text;

  suraName({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),
      textAlign: TextAlign.center,
    );
  }
}
