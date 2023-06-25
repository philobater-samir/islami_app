import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class appProvider extends ChangeNotifier {
  String appLanguage = 'ar';

  void changeLanguage(String newLanguage) async {
    if (newLanguage == appLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('newLanguage', newLanguage);
  }

  ThemeMode appTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) async {
    if (newTheme == appTheme) {
      return;
    }
    appTheme = newTheme;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('newTheme', newTheme == ThemeMode.light ? 'light' : 'dark');
  }
}
