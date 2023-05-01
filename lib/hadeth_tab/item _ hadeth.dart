import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemHadeth extends StatelessWidget {
  String contant;

  itemHadeth({required this.contant});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        contant,
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }
}
