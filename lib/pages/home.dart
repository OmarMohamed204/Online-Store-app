import 'package:flutter/material.dart';
import 'package:loginpages/model/cars.dart';
import 'package:loginpages/model/flowers.dart';
import 'package:loginpages/model/shirts.dart';
import 'package:loginpages/pages/checkout.dart';
import 'package:loginpages/pages/details_screen1.dart';
import 'package:loginpages/pages/details_screen2.dart';
import 'package:loginpages/pages/details_screen3.dart';
import 'package:loginpages/provider/cart.dart';
import 'package:loginpages/shared/appBar.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/1246.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  accountName: Text(
                    "Omar",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "om3931930@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),

                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/maloul.jpg"),
                  ),
                  currentAccountPictureSize: Size.square(77),
                ),

                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),

                ListTile(
                  title: Text("My Products"),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckOut()),
                    );
                  },
                ),

                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {},
                ),

                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),

                Spacer(),

                Container(
                  padding: EdgeInsets.only(bottom: 14),
                  child: Text(
                    "Developed by Omar Mohamed © 2026",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),

          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.purple,
              indicatorWeight: 6,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 20),
              unselectedLabelStyle: TextStyle(fontSize: 15),
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.all(5),
                  icon: Icon(
                    Icons.car_crash_rounded,
                    size: 30,
                    color: Colors.deepOrange,
                  ),
                  text: "Cars",
                ),
                Tab(
                  iconMargin: EdgeInsets.all(5),
                  icon: Icon(
                    Icons.checkroom,
                    size: 30,
                    color: const Color.fromARGB(255, 46, 3, 133),
                  ),
                  text: "T-Shirts",
                ),
                Tab(
                  iconMargin: EdgeInsets.all(5),
                  icon: Icon(Icons.local_florist, size: 30, color: Colors.pink),
                  text: "flowers",
                ),
              ],
            ),
            backgroundColor: Color.fromARGB(255, 76, 141, 95),
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [ProductAndPrice()],
          ),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              children: [
                GridView.builder(
                  itemCount: cars.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 40,
                    crossAxisCount: 1,
                    childAspectRatio: 3 / 2,
                  ),

                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) =>
                                Details2(product_cars: cars[index])),
                          ),
                        );
                      },
                      child: GridTile(
                        footer: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GridTileBar(
                            trailing: Consumer<Cart>(
                              builder: (context, value, child) {
                                return IconButton(
                                  onPressed: () {
                                    value.add(cars[index]);
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 33,
                                  ),
                                );
                              },
                            ),
                            leading: Text(
                              "\$ ${cars[index].price}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),

                            title: Text(""),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -2,
                              right: 0,
                              left: 0,
                              bottom: 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(cars[index].imgPath),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                GridView.builder(
                  itemCount: tshirts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 40,
                    crossAxisCount: 1,
                    childAspectRatio: 3 / 3,
                  ),

                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) =>
                                Details3(product_shirts: tshirts[index])),
                          ),
                        );
                      },
                      child: GridTile(
                        footer: GridTileBar(
                          trailing: Consumer<Cart>(
                            builder: (context, value, child) {
                              return IconButton(
                                onPressed: () {
                                  value.add(tshirts[index]);
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 33,
                                ),
                              );
                            },
                          ),

                          leading: Text(
                            "\$ ${tshirts[index].price}",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),

                          title: Text(""),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -2,
                              right: 0,
                              left: 0,
                              bottom: 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(tshirts[index].imgPath),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                GridView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: flowers.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 40,
                    crossAxisCount: 1,
                    // childAspectRatio: 3 / 2,
                  ),

                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) =>
                                Details1(product_flower: flowers[index])),
                          ),
                        );
                      },
                      child: GridTile(
                        footer: GridTileBar(
                          trailing: Consumer<Cart>(
                            builder: (context, value, child) {
                              return IconButton(
                                onPressed: () {
                                  value.add(flowers[index]);
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 33,
                                ),
                              );
                            },
                          ),

                          leading: Text(
                            "\$ ${flowers[index].price}",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),

                          title: Text(""),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -2,
                              right: 0,
                              left: 0,
                              bottom: 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(flowers[index].imgPath),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
