import 'package:loginpages/provider/cart.dart';
import 'package:loginpages/shared/appBar.dart';
import 'package:loginpages/shared/colors.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override

  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text(
          "Check Out",
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [ProductAndPrice()],
      ),

      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: value.selectedItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(value.selectedItems[index].name),
                      subtitle: Text(
                        "\$ ${value.selectedItems[index].price} - ${value.selectedItems[index].location}",
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          value.selectedItems[index].imgPath,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          value.remove(value.selectedItems[index]);
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          SizedBox(height: 30,),

          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
              ),
            ),
            child: Text("Pay \$ ${value.pricee}", style: TextStyle(fontSize: 19, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
