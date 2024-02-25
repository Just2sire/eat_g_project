import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.system;
  final Future<SharedPreferences> storage = SharedPreferences.getInstance();
  ThemeProvider();

  switchTheme() async {
    theme = theme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  bool get isLight => theme == ThemeMode.light;
}
