// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sample/models/catalog.dart';
import 'package:sample/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 95;

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("this is day"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
