import 'package:flutter/material.dart';

class MenuListThemes {
  static final darkTheme = ThemeData(
    backgroundColor: const Color(0x8A000000),
    primaryColor: const Color(0xFF212121),
    textTheme: const TextTheme(
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
    iconTheme: const IconThemeData(
      size: 16,
      color: Color(0xFF424242),
    ),
    dividerColor: const Color(0xFF424242),
  );

  static final lightTheme = ThemeData(
    backgroundColor: const Color(0xFFEEEEEE),
    primaryColor: const Color(0xFFFFFFFF),
    textTheme: const TextTheme(
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
    iconTheme: const IconThemeData(
      size: 16,
      color: Color(0xFF37474F),
    ),
    dividerColor: const Color(0xFF37474F),
  );
}
