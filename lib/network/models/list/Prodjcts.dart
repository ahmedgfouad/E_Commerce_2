import 'Price.dart';

class Products {
  late String name;
  late Price price;
  late String colour;
  late String brandName;
  late String imageUrl;

  Products({
    required this.name,
    required this.price,
    required this.colour,
    required this.brandName,
    required this.imageUrl,
  });

  Products.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    price =Price.fromMap(map["price"]);
    this.colour = map["colour"];
    this.brandName = map["brandName"];
    this.imageUrl = map["imageUrl"];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'name': this.name,
      'price': this.price.toMap(),
      'colour': this.colour,
      'brandName': this.brandName,
      'imageUrl': this.imageUrl,
    };
    return map;
  }
}
