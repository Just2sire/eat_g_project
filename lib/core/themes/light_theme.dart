import 'package:flutter/material.dart';

ThemeData ligthTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xfffff9eb),
    titleTextStyle: TextStyle(
      color: Color(0xfffff9eb),
      fontSize: 20,
    ),
  ),
  scaffoldBackgroundColor: const Color(0xfffff9eb),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      color: Colors.black.withOpacity(0.5),
    ),
    displayMedium: TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.5),
    ),
    displaySmall: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.5),
    ),
    headlineMedium: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.5),
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.5),
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black87.withOpacity(0.5),
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black87.withOpacity(0.5),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black54.withOpacity(0.5),
    ),
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(
    primary: const Color(0xff9b7a54),
    secondary: const Color(0xfffff9eb),
    // tertiary: Colors.white,
    seedColor: const Color(0xfffff9eb),
  ),
  fontFamily: "Poppins",
  useMaterial3: true,
);