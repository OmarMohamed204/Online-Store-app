import 'package:flutter/material.dart';
import 'package:loginpages/provider/cart.dart';
import 'package:loginpages/provider/favorites.dart';
import 'package:loginpages/shared/appBar.dart';
import 'package:loginpages/shared/colors.dart';
import 'package:provider/provider.dart';

class FavoriteItems extends StatelessWidget {
  const FavoriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites", style: TextStyle(color: Colors.white)),
        backgroundColor: appbarGreen,
        actions: [ProductAndPrice()],
      ),
      body: Consumer<Favorites>(
        builder: (context, value, child) {
          if (value.favoriteItems.isEmpty) {
            return Center(
              child: Text(
                "No Favorites Yet!! ❤️",
                style: TextStyle(fontSize: 22),
              ),
            );
          }

          return Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Total Favorite Items { ${value.favoriteItems.length} }",
                  style: TextStyle(fontSize: 22, color: Colors.deepPurple),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: value.favoriteItems.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(value.favoriteItems[index].name),
                        subtitle: Text(
                          "\$ ${value.favoriteItems[index].price} - ${value.favoriteItems[index].location}",
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            value.favoriteItems[index].imgPath,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            value.removeFavorite(value.favoriteItems[index]);
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
