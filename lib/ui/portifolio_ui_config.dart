import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortifolioUiConfig {
  PortifolioUiConfig._();

  static ThemeData get themeLight => ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
      primaryColor: const Color(0xff055AA3),
      primaryColorLight: const Color(0xffD6DFE4),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(5, 90, 163, 1),
      )));

  static ThemeData get themeDark => ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
      primaryColorDark: const Color(0xff121517),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: const Color(0xff055AA3),
        onPrimary: const Color(0xff055AA3),
      )));
}
