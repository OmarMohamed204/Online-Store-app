import 'package:flutter/material.dart';
import 'package:loginpages/pages/home.dart';
import 'package:loginpages/pages/profile.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.green),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.waving_hand, color: Colors.orange, size: 40),

              Text(
                "    Welcome to\nOnline App Store",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
