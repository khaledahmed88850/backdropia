import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(

  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor:  Colors.grey.shade100,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.grey.shade600),
    titleTextStyle: TextStyle(color: Colors.grey.shade900),
    actionsIconTheme: IconThemeData(color: Colors.grey.shade900),
  ),

  colorScheme: ColorScheme.light(
    primary: Colors.black,
    secondary: Color(0xffE1F4FF),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 56, 54, 54),
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.grey.shade500),
    titleTextStyle: TextStyle(color: Colors.white),
    actionsIconTheme: IconThemeData(color: Colors.grey.shade100),
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.grey.shade800,
  ),
);
