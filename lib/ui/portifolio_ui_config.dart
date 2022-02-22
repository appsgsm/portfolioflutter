import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortifolioUiConfig {
  PortifolioUiConfig._();

  static ThemeData get themeLight => ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
      backgroundColor: const Color(0xffD6DFE4),
      primaryColor: const Color(0xff055AA3),
      primaryColorLight: const Color(0xff172026),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: const Color(0xff055AA3),
      )));

  static ThemeData get themeDark => ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
      backgroundColor: const Color(0xff121517),
      primaryColor: const Color(0xff055AA3),
      primaryColorLight: const Color(0xffEDF4F8),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: const Color(0xff055AA3),
      )));
}
