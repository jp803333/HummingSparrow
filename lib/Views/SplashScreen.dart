import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hummingsparrowtask/Utils/ScreenRoutes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(milliseconds: 1000), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(homeScreen, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
