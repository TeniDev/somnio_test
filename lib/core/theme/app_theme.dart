import 'package:flutter/material.dart';

const seedColor = Color(0xFF03339F);

class AppTheme {
  final bool isDarkmode;

  AppTheme({required this.isDarkmode});

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: seedColor,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
      );
}
