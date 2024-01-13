import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get dartTheme => ThemeData.dark();
  static ThemeData get lightTheme => ThemeData.light();

  static ThemeMode getThemeMode(String? value) {
    return ThemeMode.values.firstWhereOrNull((v) => v.toString() == value) ??
        ThemeMode.system;
  }

  AppTheme._();
}
