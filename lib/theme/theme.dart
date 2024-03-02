import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.indigoAccent,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.indigoAccent,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
  ),
);
