import 'package:flutter/material.dart';

class Appthem {
  static const Color primary = Color(0xff5D9CEC);
  static const Color lightbackground = Color(0xffDFECDB);
  static const Color darkbackground = Color(0xff060E1E);
  static const Color white = Color(0xffFFFFFF);
  static const Color gray = Color(0xffC8C9CB);
  static const Color black = Color(0xff383838);
  static const Color red = Color(0xffEC4B4B);
  static const Color green = Color(0xff61E757);
  static ThemeData lighttheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: lightbackground,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: white,
      selectedItemColor: primary,
      unselectedItemColor: gray,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: white,
      shape: CircleBorder(side: BorderSide(width: 4, color: white)),
    ),
  );
  static ThemeData darktheme = ThemeData();
}
