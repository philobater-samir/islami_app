import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/My_theme.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class sebha extends StatefulWidget {
  static const String routeName = 'sebha';

  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int numsebha = 0;

  List<String> sebhatext = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر',
    'لا حول ولا قوة الا بالله ',
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'اضغط علي السبحة للتسبيح  ',
            style: provider.appTheme == ThemeMode.dark
                ? TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white)
                : TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: onTasbehTap,
              child: provider.appTheme == ThemeMode.dark
                  ? Image.asset('assets/image/body_sebha_dark.png')
                  : Image.asset('assets/image/body_sebha.png')),
          SizedBox(
            height: 10,
          ),
          Text(
            'عدد التسبيحات  ',
            style: provider.appTheme == ThemeMode.dark
                ? TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white)
                : TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    provider.appTheme == ThemeMode.dark
                        ? MyThemeData.BackGrounddark
                        : MyThemeData.lightPrimary)),
            onPressed: () {},
            child: Text(
              '$numsebha',
              style: provider.appTheme == ThemeMode.dark
                  ? TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30)
                  : TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      provider.appTheme == ThemeMode.dark
                          ? MyThemeData.BackGrounddark
                          : MyThemeData.lightPrimary)),
              onPressed: () {},
              child: Text(
                sebhatext[index],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTasbehTap() {
    numsebha++;
    if (numsebha % 33 == 0) {
      index++;
    }
    if (numsebha == 165) {
      index = 0;
      numsebha = 0;
    }
    setState(() {});
  }
}
