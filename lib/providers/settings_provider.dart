import 'dart:developer';

import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeAppTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isLight() {
    return currentTheme == ThemeMode.light;
  }

  String language = 'en';

  void changeAppLanguage(String newLanguage) {

    if (newLanguage == language) return;
    language = newLanguage;
    // log(language);
    notifyListeners();
  }

  bool isEnglish() {
    return language == 'en';
  }
}
