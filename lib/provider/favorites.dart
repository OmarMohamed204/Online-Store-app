import 'package:flutter/material.dart';
import 'package:loginpages/model/notification.dart';

class Favorites with ChangeNotifier {
  List favoriteItems = [];
  // ignore: non_constant_identifier_names
  List notifications_Fav = [];

  void addFavorite(dynamic product) {
    favoriteItems.add(product);

    notifications_Fav.insert(
      0,
      NotificationModel(
        title: 'Favorite Item ❤️',
        message: '${product.name} was favorite by you',
        time: 'Just now',
      ),
    );

    notifyListeners();
  }

  void removeFavorite(dynamic product) {
    favoriteItems.remove(product);

    notifyListeners();
  }

  bool isFavorite(dynamic product) {
    return favoriteItems.contains(product);
  }

  void toggleFavorite(dynamic product) {
    if (isFavorite(product)) {
      removeFavorite(product);
    } else {
      addFavorite(product);
    }
  }

  // ignore: non_constant_identifier_names
  void clearNotifications_fav() {
    notifications_Fav.clear();

    notifyListeners();
  }
}
