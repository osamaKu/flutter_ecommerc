import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

// Theme configration
ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18.0)));
}
