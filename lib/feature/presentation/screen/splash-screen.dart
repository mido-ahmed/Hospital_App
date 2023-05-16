import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
          "https://img.freepik.com/premium-vector/medical-halth-care-icon_602006-1675.jpg?w=996"),
    );
  }
}
