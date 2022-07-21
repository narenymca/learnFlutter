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
        appBar: AppBar(),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.m0,
            children: [
              "\$ ${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(StadiumBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBluishColor),
                      ),
                      child: "Buy".text.make())
                  .wh(100, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  edge: VxEdge.TOP,
                  arcType: VxArcType.CONVEY,
                  child: Container(
                    width: context.screenWidth,
                    color: Colors.white,
                    child: Column(
                      children: [
                        catalog.name.text.bold.xl4
                            .color(MyTheme.darkBluishColor)
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
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
