import 'package:flutter/material.dart';
import 'package:loginpages/pages/home.dart';
import 'package:loginpages/pages/splash.dart';
import 'package:loginpages/provider/cart.dart';
import 'package:loginpages/provider/favorites.dart';
import 'package:loginpages/provider/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const OnlineStore());
}

class OnlineStore extends StatelessWidget {
  const OnlineStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => Favorites()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),

            themeMode: value.isDark ? ThemeMode.dark : ThemeMode.light,
            home: SplashPage(),
          );
        },
      ),
    );
  }
}