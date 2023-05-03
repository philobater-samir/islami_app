import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/provider/app_provider.dart';
import 'package:provider/provider.dart';

class themeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 120,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.appTheme == ThemeMode.dark
                ? getThemeSelectedItem(AppLocalizations.of(context)!.light)
                : getThemeUnSelectedItem(AppLocalizations.of(context)!.light),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 5,
            color: provider.appTheme == ThemeMode.dark
                ? MyThemeData.amberColor
                : MyThemeData.lightPrimary,
            thickness: 4,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.appTheme == ThemeMode.dark
                ? getThemeSelectedItem(AppLocalizations.of(context)!.dark)
                : getThemeUnSelectedItem(AppLocalizations.of(context)!.dark),
          )
        ]),
      ),
    );
  }

  Widget getThemeSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget getThemeUnSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
