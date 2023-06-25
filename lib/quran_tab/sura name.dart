import 'package:flutter/material.dart';
import 'package:islamy/provider/app_provider.dart';
import 'package:islamy/quran_tab/sura_page.dart';
import 'package:provider/provider.dart';

class suraName extends StatelessWidget {
  String text;
  int index;

  suraName({required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(suraPage.routeName,
            arguments: suraPageArgs(index: index, name: text));
      },
      child: Text(
        text,
        style: provider.appTheme == ThemeMode.dark
            ? TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25)
            : TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
