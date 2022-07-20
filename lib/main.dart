import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: Login(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/splash.png",
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      home: example1,
    );
  }
}
