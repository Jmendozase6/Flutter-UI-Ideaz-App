import 'package:flutter/material.dart';

final setLightTheme = _buildLightTheme();
final setDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  return ThemeData(
    fontFamily: 'Raleway',
    primaryColor: const Color(0XFF33AA9E),
    brightness: Brightness.light,

    //Appbar
    appBarTheme: const AppBarTheme(
      elevation: 0
    ),

    // dividerColor: Colors.white54,
    // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
    //     .copyWith(secondary: Colors.black),
    // iconTheme:
    //     const IconThemeData(color: Colors.black87, size: 15.0, opacity: 10));
  );
}

ThemeData _buildDarkTheme() {
  return ThemeData(
      fontFamily: 'Raleway',
      // primaryColor: Colors.black,
      brightness: Brightness.dark,

      //Appbar
      appBarTheme: const AppBarTheme(
        elevation: 0,
      )
      // visualDensity: const VisualDensity(horizontal: 2.0, vertical: 2.0),
      // backgroundColor: const Color(0xFF212121),
      // dividerColor: Colors.black12,
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
      //     .copyWith(secondary: Colors.white),
      // iconTheme:
      //     const IconThemeData(color: Colors.white, size: 15.0, opacity: 10));
      );
}
