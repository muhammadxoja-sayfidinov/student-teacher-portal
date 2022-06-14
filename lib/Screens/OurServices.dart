import 'package:flutter/material.dart';

import '../widgets/appDrawer.dart';

class OurServicesScreen extends StatelessWidget {
  const OurServicesScreen({Key? key}) : super(key: key);

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
          body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: const [
                Text(
                  'Class Manger',style: TextStyle(color:Colors.white,fontSize: 60,),
                ),
                Text(
                  'A Student-Teacher Portal',style: TextStyle(color:Colors.white,fontSize: 60,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ) ,
        )
      ],
    );
  }
}
