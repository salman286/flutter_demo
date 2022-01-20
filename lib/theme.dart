import 'package:flutter/material.dart';

const primaryColor = 0xFF253C87;
const secondaryColor = 0xFF232323;

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(primaryColor),
    fontFamily: 'Raleway',
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Color(primaryColor),
      ),
      headline3: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color(primaryColor),
      ),
      headline4: TextStyle(
        color: Color(secondaryColor),
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
      headline5: TextStyle(
        color: Color(secondaryColor),
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
      ),
      headline6: TextStyle(
        color: Color(secondaryColor),
        fontSize: 11.0,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        color: Color(secondaryColor),
        fontSize: 13,
        height: 1.3,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: TextStyle(
        color: Color(secondaryColor),
        fontSize: 10,
        height: 1,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
