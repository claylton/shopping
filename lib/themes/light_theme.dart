import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0XFF00C569);
const lightColor = Color(0XFFFFFFFF);
const backgroundColor = const Color(0XFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: primaryColor,
      secondary: Colors.white,
    ),
    textTheme: const TextTheme(
      // bodyMedium: TextStyle(color: Colors.red),
      displayMedium: TextStyle(fontSize: 78),
      labelMedium: TextStyle(color: Colors.green),
      // headlineMedium: 
    ),
  );
}
