import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddtoCart extends StatelessWidget {
  final Item catalog;
  const AddtoCart({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final _cart = CartModel();
    //VxState.notify(AddMutation(catalog));
    VxState.watch(context, on: [AddMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;

    bool isInCart = _cart?.items.contains(catalog) ?? false;

    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            AddMutation(catalog);
          }
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          backgroundColor:
              MaterialStateProperty.all(context.theme.bottomAppBarColor),
        ),
        child:
            isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
