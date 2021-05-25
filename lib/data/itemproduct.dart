import 'package:my_library/data/itemproductfilter.dart';

class ItemProduct {
  final String name;
  final String photo;
  final String price;
  final List<ItemProductFilter> listProductFilter;

  ItemProduct(
    this.name,
    this.photo,
    this.price,
    this.listProductFilter,
  );

  @override
  String toString() {
    return 'ItemProduct{name: $name}';
  }
}