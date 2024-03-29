import 'package:flutter/material.dart';

class AppConfigUI {
  AppConfigUI._();

  static const MaterialColor _primarySwatch = MaterialColor(0XFF0066B0, {
    50: Color(0XFF005c9e),
    100: Color(0XFF00528d),
    200: Color(0XFF00477b),
    300: Color(0XFF003d6a),
    400: Color(0XFF003358),
    500: Color(0XFF002946),
    600: Color(0XFF001f35),
    700: Color(0XFF001423),
    800: Color(0XFF000a12),
    900: Color(0XFF000000),
  });

  static final ThemeData theme = ThemeData(
    primarySwatch: _primarySwatch,
    useMaterial3: false,
    primaryColor: const Color(0XFF0066B0),
    primaryColorLight: const Color(0XFF219FFF),
    //useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          color: Color.fromARGB(255, 54, 17, 17),
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color(0XFF0066B0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
