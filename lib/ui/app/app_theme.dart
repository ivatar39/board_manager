import 'package:flutter/material.dart';

final baseTheme = ThemeData.light();

final appTheme = baseTheme.copyWith(
  primaryColor: Colors.green,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);
