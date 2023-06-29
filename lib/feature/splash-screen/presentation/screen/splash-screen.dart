import 'package:flutter/material.dart';
import 'package:hospital_app/feature/home-screen/presentation/screens/home-screen.dart';
import 'package:hospital_app/feature/login-screen/presentation/screens/login-screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 5000), () async {
      final prefs = await SharedPreferences.getInstance();

      final accesstoken = await prefs.get('user_access_token');
      if (accesstoken == null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return LoginScreen();
        }), (route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }), (route) => false);
      }
    });
    return Center(
      child: Image.network(
          "https://img.freepik.com/premium-vector/medical-halth-care-icon_602006-1675.jpg?w=996"),
    );
  }
}
