import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/hadeth_tab/hadeth.dart';
import 'package:islamy/provider/app_provider.dart';
import 'package:islamy/quran_tab/Quran.dart';
import 'package:islamy/radio/radio.dart';
import 'package:islamy/settings/settings.dart';
import 'package:islamy/tasbeh/sebha.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);

    return Stack(
      children: [
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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: provider.appTheme == ThemeMode.dark
                  ? TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: MyThemeData.amberColor)
                  : Theme.of(context).textTheme.headline1,
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
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/hadeth_icon.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/sebha_icon.png')),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/radio_icon.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
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
    Hadeth(),
    sebha(),
    radio(),
    settings(),
  ];
}
