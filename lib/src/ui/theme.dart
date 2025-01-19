import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  textTheme: GoogleFonts.poppinsTextTheme(),
  cardTheme: CardTheme(
    elevation: 8,
    shadowColor: Colors.blue.withOpacity(0.2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    elevation: 8,
    backgroundColor: Colors.blue[600],
    foregroundColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  ),
);
