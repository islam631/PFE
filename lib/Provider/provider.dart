import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UiProvider extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  late SharedPreferences storage;

  //costume darktheme
  final darkTheme = ThemeData(
    primaryColor: Colors.black12,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black12,
  );

  //costume lighttheme
  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    primaryColorDark: Colors.white,
  );

  //darl mode toggle action
  changeTheme(bool isDark) {
    _isDark = isDark;

    //save the theme mode to shared preferences
    storage.setBool('isDark', _isDark);
    notifyListeners();
  }

  //init function of provider
  init() async {
    storage = await SharedPreferences.getInstance();
    _isDark = storage.getBool('isDark') ?? false;
    notifyListeners();
  }
}
