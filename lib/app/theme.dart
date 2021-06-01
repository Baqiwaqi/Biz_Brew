import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _primaryColor = Color(0xFF0C9869);
  static const _secondaryColor = Color(0xFFF9F8FD);
  // static const  _textColor = Color(0xFF3C4046);

  static const _dividerTheme = DividerThemeData(
    space: 0.0,
    indent: 16.0,
  );

  static const double _defaultPadding = 16.0;
  
  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: _primaryColor,
      onPrimary: _secondaryColor,
    )
  );

  static ThemeData light() {
    final textTheme = _getTextTheme(Brightness.light);

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: _primaryColor,
      accentColor: _secondaryColor,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      dividerTheme: _dividerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
    );
  }

  static TextTheme _getTextTheme(Brightness brightness) {
    final themeData = ThemeData(brightness: brightness);

    return GoogleFonts.poppinsTextTheme(themeData.textTheme).copyWith(
      headline1: GoogleFonts.poppins(),
      headline2: GoogleFonts.poppins(),
      headline3: GoogleFonts.poppins(),
      headline4: GoogleFonts.poppins(),
      headline5: GoogleFonts.poppins(),
      headline6: GoogleFonts.poppins(),
    );
  }

}
