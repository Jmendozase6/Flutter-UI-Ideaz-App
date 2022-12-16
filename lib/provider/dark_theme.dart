import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkThemeNotifier extends ChangeNotifier {
  final SharedPreferences sharedPreferences;

  DarkThemeNotifier(this.sharedPreferences);

  bool get isDarkMode => sharedPreferences.getBool("isDarkMode") ?? false;

  void setDarkMode(bool value) {
    sharedPreferences.setBool("isDarkMode", value);
    notifyListeners();
  }
}
