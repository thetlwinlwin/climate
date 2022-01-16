import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const ColorScheme _lightColorScheme = ColorScheme.highContrastLight(
  primary: Colors.white,
  secondary: Colors.black,
  background: Colors.white,
  brightness: Brightness.light,
);
const ColorScheme _darkColorScheme = ColorScheme.highContrastDark(
  primary: Colors.black,
  secondary: Colors.white,
  background: Colors.grey,
  brightness: Brightness.dark,
  surface: Colors.black,
);

const AppBarTheme _kAppbarTheme = AppBarTheme(
  elevation: 0,
  backgroundColor: Colors.transparent,
);

class MyTheme {
  static ThemeData light() {
    return ThemeData(
      appBarTheme: _kAppbarTheme,
      fontFamily: GoogleFonts.spartan().fontFamily,
      colorScheme: _lightColorScheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      fontFamily: GoogleFonts.spartan().fontFamily,
      appBarTheme: _kAppbarTheme,
      colorScheme: _darkColorScheme,
    );
  }
}
