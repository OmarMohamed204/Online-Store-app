import 'package:flutter/material.dart';
import 'package:loginpages/model/notification.dart';

class Cart with ChangeNotifier {
  List selectedItems = [];
  // ignore: non_constant_identifier_names
  List notifications_add = [];

  double pricee = 0;

  void add(dynamic product) {
    selectedItems.add(product);

    notifications_add.insert(
      0,
      NotificationModel(
        title: 'Product Added 🛒',
        message: '${product.name}  was added to your cart',
        time: 'Just now',
      ),
    );

    pricee += double.parse(product.price).round();

    notifyListeners();
  }

  void remove(dynamic product) {
    selectedItems.remove(product);

    pricee -= double.parse(product.price).round();

    notifyListeners();
  }

  void clearNotifications() {
    notifications_add.clear();

    notifyListeners();
  }

  // ignore: strict_top_level_inference
  get itemCount {
    return selectedItems.length;
  }
}
