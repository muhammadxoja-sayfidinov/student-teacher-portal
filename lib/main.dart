import 'package:classmanager/Screens/AboutScreen.dart';
import 'package:classmanager/Screens/LoginPage.dart';
import 'package:classmanager/provider/teachers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timeBackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);
        timeBackPressed = DateTime.now();
        if (isExitWarning) {
          const message = 'Press back again to exit';
          Fluttertoast.showToast(msg: message, fontSize: 18);
          return false;
        } else {
          Fluttertoast.cancel();
          return true;
        }
      },
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<Teachers>(create: (ctx){return Teachers();},)
        ],
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.indigo),
          home: AuthScreen(),
          routes: {
            AuthScreen.routeName: (context) => AuthScreen(),
            AboutScreen.routeName: (context) => AboutScreen(),
          },
        ),
      ));
}
