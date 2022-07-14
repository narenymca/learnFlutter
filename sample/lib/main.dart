import 'package:flutter/material.dart';
import 'package:sample/pages/login_page.dart';

import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  int days = 95;
  String name = "tuesday";
  double day = 5.0;
  bool isBoy = true;
  num dayss = 5.0;

  var month = "jan";

  // MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        //brightness: Brightness.dark
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
