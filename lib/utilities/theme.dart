import 'package:flutter/material.dart';

ThemeData? themeData() {
  return ThemeData(
    primaryColor: Color.fromRGBO(171, 120, 78, 0.9),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(
          42.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.brown),
        borderRadius: BorderRadius.circular(
          42.0,
        ),
      ),
    ),
  );
}
