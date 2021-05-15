import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummingsparrowtask/Utils/ScreenRoutes.dart';
import 'package:hummingsparrowtask/Views/HomeScreen.dart';
import 'package:hummingsparrowtask/Views/ProfileScreen.dart';
import 'package:hummingsparrowtask/Views/SplashScreen.dart';
import 'package:hummingsparrowtask/Views/VideoScreen.dart';

class NavigationRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case videoScreen:
        return MaterialPageRoute(builder: (_) => VideoScreen());
      case profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
