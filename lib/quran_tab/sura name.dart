import 'package:flutter/material.dart';
import 'package:islamy/quran_tab/sura_page.dart';

class suraName extends StatelessWidget {
  String text;
  int index;

  suraName({required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(suraPage.routeName,
            arguments: suraPageArgs(index: index, name: text));
      },
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
