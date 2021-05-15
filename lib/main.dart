import 'package:flutter/material.dart';
import 'package:hummingsparrowtask/Utils/NavigationRouter.dart';
import 'package:hummingsparrowtask/Utils/ScreenRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Humming Sparrow Task',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRouter().generateRoute,
      initialRoute: splashScreen,
    );
  }
}
