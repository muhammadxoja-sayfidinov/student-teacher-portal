import 'package:classmanager/Screens/AboutScreen.dart';
import 'package:classmanager/Screens/HomePage.dart';
import 'package:classmanager/Screens/LoginPage.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({
    Key? key,
  }) : super(key: key);
  String user = 'Login';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      backgroundColor: Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Class Manager'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AuthScreen.routeName);
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            },
            child: Text(
              'HomePage',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(AboutScreen.routeName);
            },
            child: Text(
              'About Us',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Our Services',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'UpLoad Assigment',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              ' Assigment list',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View Submissions',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'All Students List',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Class Students',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Write Notice',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Inbox',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Profile',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Change Password',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Log Out',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
