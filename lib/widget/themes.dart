import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData( //1st theme
    primarySwatch: Colors.cyan,
    primaryTextTheme: GoogleFonts.lektonTextTheme(),
    appBarTheme: const AppBarTheme(
      color: Colors.cyan,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData( //2nd theme
    brightness: Brightness.dark
  );
}