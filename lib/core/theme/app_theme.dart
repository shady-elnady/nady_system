import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/global.dart';

part './dark_theme.dart';

final ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.green,
  primaryColor: const Color(0xFF9AEE3A),
  secondaryHeaderColor: Colors.orange,
  backgroundColor: const Color(0xFFFFFFFF),
  canvasColor: const Color(0xFFFFFFFF),
  // canvasColor: const Color(0xFFe6ebf2),
  hoverColor: const Color(0xFF0000FF),
  cardColor: const Color(0xFF000000),
  fontFamily: GoogleFonts.prompt().fontFamily,
  // colorScheme: const ColorScheme(
  //   primary: Color(0xFF0000FF),
  //   primaryVariant: Color(0xFF000000),
  //   secondary: Color(0xFF00FF00),
  //   secondaryVariant: Color(0xFF00FF00),
  //   surface: Color(0xFFe6ebf2),
  //   background: Color(0xFFe6ebf2),
  //   error: Color(0xFFFF0000),
  //   onPrimary: Color(0xFF00FF00),
  //   onSecondary: Color(0xFFF38E0B),
  //   onSurface: Color(0xFFE9E51D),
  //   onBackground: Color(0xFF000000),
  //   onError: Color(0xFFFF0000),
  //   brightness: Brightness.light,
  // ),
);
