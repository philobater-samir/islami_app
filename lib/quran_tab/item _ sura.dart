import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemSura extends StatelessWidget {
  String text;

  itemSura({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }
}
