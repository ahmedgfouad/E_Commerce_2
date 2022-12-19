import 'Current.dart';

class Price {
  late Current current;
  Price({required this.current});
  Price.fromMap(Map<String, dynamic> map) {
    current =Current.fromMap(map['current']);
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'current': this.current.toMap(),
    };
    return map;
  }
}
