import 'package:sample/core/store.dart';
import 'package:sample/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //catalog field
  CatalogModel? _catalog;

  CatalogModel? get catalog => _catalog;
  set catalog(CatalogModel? newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //collection of ids
  final List<int> _itemIds = [];

  List<Item> get items => _itemIds.map((id) => _catalog!.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cart?._itemIds.add(item.id);
  }
}
