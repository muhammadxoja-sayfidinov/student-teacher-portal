import 'package:flutter/material.dart';

import '../widgets/appDrawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  static String routeName = 'about-page';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/first.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(),
          backgroundColor: const Color.fromRGBO(0, 0, 180, 0.5),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Container(
                  color: Colors.indigo,
                  child: Column(
                    children: const [
                      Text(
                        'About US',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),

                      Text(

                        '''Class Manager is a student-teacher portal with various classroom features like uploading
                          assignments, submissions, Class Notice and many more. 
                          Students and Teacher can login in the portal and can experience interactive 
                          classroom experience online. One of the most powerful features of class manager is its 
                            student managing abilities. Teacher can easily manage their
                          students and keep them updated about all of the activities in class''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
