import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryColor = const Color(0xFF39A552);
  static Color navy = const Color(0xFF4F5A69);
  static Color black = const Color(0xFF303030);
  static Color lightnavy=Color(0xFF79828B);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
      bodySmall:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: navy),
      titleSmall: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: navy)
    ),

  );
}
