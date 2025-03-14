import 'package:backdropia/core/utils/app_themes.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData =
      WidgetsBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.light
          ? lightMode
          : darkMode;
  ThemeData get getTheme => _themeData;

  set setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    notifyListeners();
  }
}
