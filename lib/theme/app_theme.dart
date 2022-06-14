import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_agence_virtuelle_moov_africa/constants/constants.dart';

AppTheme currentTheme = AppTheme();

class AppTheme with ChangeNotifier {
  static bool _isDarkThemOn = false;

  ThemeMode get currentTheme =>
      _isDarkThemOn ? ThemeMode.dark : ThemeMode.light;

  get textTheme => null;

  void toggleTheme() {
    _isDarkThemOn = !_isDarkThemOn;
    notifyListeners();
  }

  // static TextTheme lightTextTheme = TextTheme(

  // );
  static ThemeData get light {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        secondary: primaryColor,
        background: Colors.black,
        onBackground: Colors.black,
        error: Colors.red,
        onError: black,
        onSecondary: primaryColor,
        onPrimary: white,
        onSurface: primaryColor,
        surface: primaryColor,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryColor,
      ),
      primaryColor: primaryColor,
      scaffoldBackgroundColor: mixedBlueWhiteBackgroundColor,
      inputDecorationTheme: InputDecorationTheme(
        focusColor: primaryColor,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(
          fontSize: 97,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
          color: black,
        ),
        headline2: GoogleFonts.montserrat(
          fontSize: 61,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5,
          color: black,
        ),
        headline3: GoogleFonts.montserrat(
          fontSize: 48,
          fontWeight: FontWeight.w400,
          color: black,
        ),
        headline4: GoogleFonts.montserrat(
          fontSize: 34,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: black,
        ),
        headline5: GoogleFonts.montserrat(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: black,
        ),
        headline6: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: black,
        ),
        subtitle1: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
        subtitle2: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        bodyText1: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        bodyText2: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        button: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
        ),
        caption: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: inactiveColor,
          height: 1.5,
        ),
        overline: GoogleFonts.montserrat(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
        ),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData();
  }
}
