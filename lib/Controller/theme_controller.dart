import 'package:flutter/cupertino.dart';

class ThemeController extends ChangeNotifier {
  bool isDark = false;

  void ChangeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
