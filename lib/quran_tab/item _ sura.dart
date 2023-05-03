import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/My_theme.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class itemSura extends StatelessWidget {
  String text;

  itemSura({required this.text});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);

    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: provider.appTheme == ThemeMode.dark
            ? TextStyle(
                color: MyThemeData.amberColor,
                fontSize: 25,
                fontWeight: FontWeight.w400)
            : TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }
}
