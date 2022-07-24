import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/models/cart.dart';
import 'package:sample/pages/home_detail_page.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../widgets/Theme.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items!.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items![index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(catalog: catalog),
              ),
            ),
            child: VxBox(
                child: Row(
              children: [
                Hero(
                    tag: Key(catalog.id.toString()),
                    child: CatalogImage(image: catalog.image)),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.bold.lg
                        .color(Theme.of(context).indicatorColor)
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: Vx.m0,
                      children: [
                        "\$ ${catalog.price}".text.bold.xl.make(),
                        _AddtoCart(catalog: catalog),
                      ],
                    ).pOnly(right: 8.0)
                  ],
                ))
              ],
            )).color(context.cardColor).roundedLg.square(150).make().py16(),
          );
        });
  }
}

class _AddtoCart extends StatefulWidget {
  final Item catalog;
  const _AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<_AddtoCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = isAdded.toggle();
          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          backgroundColor:
              MaterialStateProperty.all(context.theme.bottomAppBarColor),
        ),
        child: isAdded ? Icon(Icons.done) : "Add to Cart".text.make());
  }
}
