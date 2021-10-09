import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final setLightTheme = _buildLightTheme();
final setDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor:  Colors.white,
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
  );
}

ThemeData _buildDarkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
  );
}