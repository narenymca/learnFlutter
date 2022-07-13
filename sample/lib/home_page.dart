import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 95;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is day"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days this app"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
