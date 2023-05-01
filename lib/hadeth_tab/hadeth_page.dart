import 'package:flutter/material.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/hadeth_tab/hadeth.dart';
import 'package:islamy/hadeth_tab/item%20_%20hadeth.dart';

class hadethPage extends StatefulWidget {
  static const String routeName = 'hadethPage';

  @override
  State<hadethPage> createState() => _hadethPageState();
}

class _hadethPageState extends State<hadethPage> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as hadethcontent;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Image.asset(
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
            style: Theme.of(context).textTheme.headline1,
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
                color: MyThemeData.colorWhite,
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
