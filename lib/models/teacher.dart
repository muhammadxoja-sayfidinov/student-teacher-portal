import 'package:flutter/material.dart';

class Teacher with ChangeNotifier{
   final String id ;
   final String name ;
   final String email ;
   final String password ;
   Teacher({
      required this.name,
      required this.email,
      required this.password,
      required this.id, }

);

}