import 'package:flutter/material.dart';

class MenuListThemes {
  static final darkTheme = ThemeData(
    backgroundColor: Color(0x8A000000),
    primaryColor: Color(0xFF212121),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 16,
      ),

      /// android
      subtitle1: TextStyle(
        color: Color(0x62FFFFFF),
        fontSize: 14,
      ),

      /// ios
      subtitle2: TextStyle(
        color: Color(0x62FFFFFF),
        fontSize: 16,
      ),
    ),
    iconTheme: IconThemeData(
      size: 16,
      color: Color(0xFF424242),
    ),
    dividerColor: Color(0xFF424242),
  );

  static final lightTheme = ThemeData(
    backgroundColor: Color(0xFFEEEEEE),
    primaryColor: Color(0xFFFFFFFF),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Color(0xFF37474F),
        fontSize: 16,
      ),
      subtitle1: TextStyle(
        color: Color(0x62FFFFFF),
        fontSize: 14,
      ),

      /// android
      subtitle2: TextStyle(
        color: Color(0x62FFFFFF),
        fontSize: 16,
      ),
    ),
    iconTheme: IconThemeData(
      size: 16,
      color: Color(0xFF37474F),
    ),
    dividerColor: Color(0xFF37474F),
  );
}
