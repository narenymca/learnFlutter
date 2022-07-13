// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 95;

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("this is day"),
      ),
      body: Center(
        child: Text("welcome to $days this app by narender"),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
    );
  }
}


