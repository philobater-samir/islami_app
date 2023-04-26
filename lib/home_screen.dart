import 'package:flutter/material.dart';
import 'package:islamy/Quran.dart';
import 'package:islamy/hadeth.dart';
import 'package:islamy/radio.dart';
import 'package:islamy/settings.dart';
import 'package:islamy/tasbih.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/image/light_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/quran_icon.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/hadeth_icon.png')),
                    label: 'hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/sebha_icon.png')),
                    label: 'tasbeh'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/radio_icon.png')),
                    label: 'radio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    Quran(),
    hadeth(),
    tasbih(),
    radio(),
    settings(),
  ];
}
