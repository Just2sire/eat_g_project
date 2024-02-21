import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.system;
  final Future<SharedPreferences> storage = SharedPreferences.getInstance();
  ThemeProvider() {
    // _loadTheme();
  }

  switchTheme() async {
    // SharedPreferences prefs = await storage;
    // prefs.setString("theme", theme == ThemeMode.light ? "dark" : "light");
    // String? storedTheme = prefs.getString("theme");
    theme = theme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  bool get isLight => theme == ThemeMode.light;

  // void _loadTheme() async {
  //   // SharedPreferences prefs = await storage;
  //   String storedTheme = prefs.getString("theme") ?? "light";
  //   theme = storedTheme == "light" ? ThemeMode.light : ThemeMode.dark;
  //   notifyListeners();
  // }
}
