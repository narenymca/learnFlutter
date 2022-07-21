import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
// colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            // ignore: prefer_const_constructors
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 1.0,
            ),
            // ignore: prefer_const_constructors
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            // ignore: prefer_const_constructors
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 1.0,
            ),
            // ignore: prefer_const_constructors
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
      );
}
