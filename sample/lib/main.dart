import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  int days = 95;
  String name = "tuesday";
  double day = 5.0;
  bool isBoy = true;
  num dayss = 5.0;

  var month = "jan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
