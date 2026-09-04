import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedItems = [];

  double pricee = 0;

  void add(dynamic product) {
    selectedItems.add(product);

    pricee += double.parse(product.price).round();

    notifyListeners();
  }

  void remove(dynamic product) {
    selectedItems.remove(product);

    pricee -= double.parse(product.price).round();

    notifyListeners();
  }

  // ignore: strict_top_level_inference
  get itemCount {
    return selectedItems.length;
  }
}
