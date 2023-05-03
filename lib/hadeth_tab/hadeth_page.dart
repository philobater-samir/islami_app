import 'package:flutter/material.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/hadeth_tab/hadeth.dart';
import 'package:islamy/hadeth_tab/item%20_%20hadeth.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class hadethPage extends StatefulWidget {
  static const String routeName = 'hadethPage';

  @override
  State<hadethPage> createState() => _hadethPageState();
}

class _hadethPageState extends State<hadethPage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as hadethcontent;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(children: [
      provider.appTheme == ThemeMode.dark
          ? Image.asset(
              'assets/image/dark_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/image/light_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            '${args.title}',
            style: provider.appTheme == ThemeMode.dark
                ? TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: MyThemeData.amberColor)
                : Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
        body: Container(
            width: width * 0.9,
            height: height * 0.9,
            margin: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                bottom: height * 0.06,
                top: height * 0.08),
            decoration: BoxDecoration(
                color: provider.appTheme == ThemeMode.dark
                    ? MyThemeData.BackGrounddark
                    : MyThemeData.colorWhite,
                borderRadius: BorderRadius.circular(25)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return itemHadeth(
                  contant: args.content[index],
                );
              },
              itemCount: args.content.length,
            )),
      ),
    ]);
  }
}
