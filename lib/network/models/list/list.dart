import 'package:e_commerce_2/network/models/list/Prodjcts.dart';

class MainList {
  late String categoryName;
  late List<Products> products;

  MainList({
    required this.categoryName,
    required this.products,
  });

  MainList.fromMap(Map<String, dynamic> map) {
    this.categoryName = map['categoryName'];
    this.products = [];
    (map['products'] as List).forEach((element) {
      this.products.add(Products.fromMap(element));
    });
  }
  Map<String, dynamic> toMap() {
    List<Map> tempProducts = [];
    this.products.forEach((element) {
      tempProducts.add(element.toMap());
    });
    Map<String, dynamic> map = {
      'categoryName': this.categoryName,
      'products': tempProducts,
    };
    return map;
  }
}
