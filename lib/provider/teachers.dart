import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/teacher.dart';

class Teachers with ChangeNotifier {
  List<Teacher> _list = [];
  List<Teacher> get list {
    return _list;
  }

  Future<void> getTeacher() async {
    final url = Uri.parse(
        "https://class-manager-student-teacher.herokuapp.com/api/auth/getTeachers");
    try {
      final response = await http.get(url);
      final List<Teacher> loadedTeacher = [];

      if (response.body != null) {
        final date = jsonDecode(response.body) as List;
        for (Map<String, dynamic> teacherDate in date) {
          loadedTeacher.add(
            Teacher(
                name: teacherDate['username'],
                email: teacherDate['email'],
                password: teacherDate['password'],
                id: teacherDate['id'].toString()),
          );
        }   print('$loadedTeacher loadedTeacher ');
        _list = loadedTeacher;
      }

      notifyListeners();
    } catch (e) {
      print('error');
      rethrow;
    }
  }
}
