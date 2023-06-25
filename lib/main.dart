import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/hadeth_tab/hadeth.dart';
import 'package:islamy/hadeth_tab/hadeth_page.dart';
import 'package:islamy/home_screen.dart';
import 'package:islamy/provider/app_provider.dart';
import 'package:islamy/quran_tab/Quran.dart';
import 'package:islamy/quran_tab/sura_page.dart';
import 'package:islamy/radio/radio.dart';
import 'package:islamy/settings/settings.dart';
import 'package:islamy/tasbeh/sebha.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => appProvider(), child: islamiApp()));
}

class islamiApp extends StatelessWidget {
  late appProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<appProvider>(context);
    intialSharedPref();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName: (context) => homeScreen(),
        Quran.routeName: (context) => Quran(),
        Hadeth.routeName: (context) => Hadeth(),
        sebha.routeName: (context) => sebha(),
        radio.routeName: (context) => radio(),
        settings.routeName: (context) => settings(),
        suraPage.routeName: (context) => suraPage(),
        hadethPage.routeName: (context) => hadethPage(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      themeMode: provider.appTheme,
      locale: Locale(provider.appLanguage),
    );
  }

  void intialSharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String newLanguage = prefs.getString('newLanguage') ?? 'en';
    String? newTheme = prefs.getString('newTheme');
    provider.changeLanguage(newLanguage);
    if (newTheme == 'light') {
      provider.changeTheme(ThemeMode.light);
    } else if (newTheme == 'dark') {
      provider.changeTheme(ThemeMode.dark);
    }
  }
}
