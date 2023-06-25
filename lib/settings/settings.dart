import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/provider/app_provider.dart';
import 'package:islamy/settings/language_item.dart';
import 'package:islamy/settings/theme_item.dart';
import 'package:provider/provider.dart';

class settings extends StatefulWidget {
  static const String routeName = 'setting';

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  late appProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<appProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  AppLocalizations.of(context)!.language,
                  style: provider.appTheme == ThemeMode.dark
                      ? TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)
                      : TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    showlanguageItem();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: provider.appTheme == ThemeMode.dark
                            ? MyThemeData.amberColor
                            : MyThemeData.lightPrimary),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            provider.appLanguage == 'en'
                                ? AppLocalizations.of(context)!.english
                                : AppLocalizations.of(context)!.arabic,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    AppLocalizations.of(context)!.theme,
                    style: provider.appTheme == ThemeMode.dark
                        ? TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)
                        : TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    showThemeItem();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: provider.appTheme == ThemeMode.dark
                            ? MyThemeData.amberColor
                            : MyThemeData.lightPrimary),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            provider.appTheme == ThemeMode.light
                                ? AppLocalizations.of(context)!.light
                                : AppLocalizations.of(context)!.dark,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showlanguageItem() {
    showModalBottomSheet(
        backgroundColor: provider.appTheme == ThemeMode.dark
            ? MyThemeData.amberColor
            : MyThemeData.lightPrimary,
        context: context,
        builder: (context) {
          return LanguageItam();
        });
  }

  void showThemeItem() {
    showModalBottomSheet(
        backgroundColor: provider.appTheme == ThemeMode.dark
            ? MyThemeData.amberColor
            : MyThemeData.lightPrimary,
        context: context,
        builder: (context) {
          return themeItem();
        });
  }
}
