import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
// colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;

  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        bottomAppBarColor: darkCreamColor,
        indicatorColor: darkBluishColor,
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 1.0,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        bottomAppBarColor: lightBluishColor,
        indicatorColor: Colors.white,
        appBarTheme: const AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              letterSpacing: 1.0,
            ),
            iconTheme: IconThemeData(
              color: Colors.white,
            )),
      );
}
