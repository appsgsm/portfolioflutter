import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  Color get primaryColorDark => Theme.of(this).primaryColorDark;
  Color get buttonColor => Theme.of(this).colorScheme.onPrimary;
  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get cardColorLight => const Color(0xffedf4f8);
  Color get cardColorDark => const Color(0xff172026);
  TextStyle get descriptionText => const TextStyle(
      fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xff51565A));
}
