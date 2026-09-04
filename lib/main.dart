import 'package:flutter/material.dart';
import 'package:loginpages/pages/home.dart';
import 'package:loginpages/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const OnlineStore());
}

class OnlineStore extends StatelessWidget {
  const OnlineStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );
  }
}
