import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/models/catalog.dart';
import 'package:sample/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Theme.of(context).canvasColor,
        bottomNavigationBar: Container(
          color: Theme.of(context).cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.m0,
            children: [
              "\$ ${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).bottomAppBarColor),
                ),
                child: "Add to Cart".text.make(),
              ).wh(120, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image).h32(context),
              ),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  edge: VxEdge.TOP,
                  arcType: VxArcType.CONVEY,
                  child: Container(
                    width: context.screenWidth,
                    color: Theme.of(context).cardColor,
                    child: Column(
                      children: [
                        catalog.name.text.bold.xl4
                            .color(Theme.of(context).indicatorColor)
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        "Sanctus est ea diam justo at, lorem gubergren labore eirmod voluptua dolor, clita dolore sed dolores invidunt sit, dolor sanctus lorem stet tempor. Dolores dolor lorem et dolor sit ipsum et at. Consetetur gubergren duo magna labore et. Sit voluptua diam eos lorem erat dolor rebum sit, consetetur dolores sadipscing."
                            .text
                            .make(),
                      ],
                    ).py64(),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
