import 'package:flutter/material.dart';

import 'i18n/en/strings.g.dart';

class AppViewModel extends ChangeNotifier {
  AppViewModel() {
    initLocalzation();
  }

  final languages = ['en', 'id'];
  String currentLanguage = 'en';

  void changeLanguage(String language) {
    currentLanguage = language;
    initLocalzation();
  }

  void initLocalzation() {
    LocaleSettings.setLocaleRaw(currentLanguage);
  }
}