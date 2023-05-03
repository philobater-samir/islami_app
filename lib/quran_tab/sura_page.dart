import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/quran_tab/item%20_%20sura.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class suraPage extends StatefulWidget {
  static const String routeName = 'suraPage';

  @override
  State<suraPage> createState() => _suraPageState();
}

class _suraPageState extends State<suraPage> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as suraPageArgs;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
            '${args.name}',
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
            child: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
              itemBuilder: (context, index) {
                return itemSura(text: verses[index]);
              },
              itemCount: verses.length,
            )),
      ),
    ]);
  }

  void loadFile(index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent.split('\n');
    verses = lines;
    setState(() {});
  }
}

class suraPageArgs {
  String name;
  int index;

  suraPageArgs({required this.index, required this.name});
}
