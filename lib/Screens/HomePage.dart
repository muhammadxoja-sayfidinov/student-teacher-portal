import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/appDrawer.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  static String routeName = '/';
  DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context)
    =>  WillPopScope(
      onWillPop: ()async{
        final difference =DateTime.now().difference(timeBackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);
        timeBackPressed =DateTime.now();
        if (isExitWarning){
          const message = 'Press back again to exit';
          Fluttertoast.showToast(msg: message,fontSize: 18);
          return false;
        }else{
          Fluttertoast.cancel();
          return true;
        }
      },
      child: Stack(
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
          ),

      ],));


}
