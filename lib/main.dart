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
      // theme: ThemeData(
      //   textTheme: const TextTheme(
      //     bodyText2: TextStyle(color: Colors.white),
      //     subtitle1: TextStyle(
      //       color: Colors.white, // <-- TextFormField input color
      //     ),
      //   ),
      //     cardColor:
      // ),
      home: AuthScreen(),
      routes: {AuthScreen.routeName: (context) => AuthScreen()},
    );
  }
}
