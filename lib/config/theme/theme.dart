import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 10,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: Colors.black,
    ),
  );
}
