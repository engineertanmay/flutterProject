import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();
  static const Color appBacgroundColor = Color(0xfffff7ec);
  static const Color topBacgroundColor = Color(0xffffd974);
  static const Color selectedTapBacgroundColor = Color(0xffffc442);
  static const Color unSelectedTapBacgroundColor = Color(0xfffffffc);
  static const Color subTitleTextColor = Color(0xff9f988f);


static final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppTheme.appBacgroundColor,
  brightness: Brightness.light,
  textTheme:TextTheme(
      headline1: TextStyle(color: Colors.black, fontSize: 72.0, fontWeight:
      FontWeight
          .bold),
      headline2: TextStyle(color: Colors.black,fontSize: 36.0, fontStyle:
      FontStyle.italic),
  ),
);
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme:TextTheme(
  headline1: TextStyle(color: Colors.white, fontSize: 72.0, fontWeight: FontWeight
      .bold),
  headline2: TextStyle(color: Colors.white,fontSize: 36.0, fontStyle: FontStyle.italic),
  ),
  );

}