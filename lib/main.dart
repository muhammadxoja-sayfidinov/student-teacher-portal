import 'package:classmanager/Screens/AboutScreen.dart';
import 'package:classmanager/Screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch:Colors.indigo

          ),
      home: HomePage(),
      routes: {
        AuthScreen.routeName: (context) => AuthScreen(),
        AboutScreen.routeName: (context) => AboutScreen(),
      },
    );
  }
}
