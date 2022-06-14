import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/teacher.dart';
import '../provider/teachers.dart';

class AuthScreen extends StatefulWidget {

  const AuthScreen({Key? key}) : super(key: key);
  static String routeName = 'auth-screen';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, String> _authDate = {
    'email': ' ',
    'password': '',
  };

  void sumbit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  var _init = true;

  @override
  void didChangeDependencies() {
    if (_init) {
      Provider.of<Teachers>(context)
          .getTeacher();
    }
    _init = false;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var teacherDate = Provider.of<Teachers>(context);
    print(teacherDate.list);
    return Stack(children: [
      Image.asset(
        'assets/images/login-background.png',
        color: Colors.blue.withOpacity(1),
        colorBlendMode: BlendMode.softLight,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 180, 0.5),
        body: Center(
          child: Container(
            width: 400,
            height: 600,
            color: Colors.red[500],
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(400)),
                        child: const CircleAvatar(
                          foregroundImage: AssetImage(
                            'assets/images/login-avatar.png',
                          ),
                        ),
                      ),
                      Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          // fontWeight: FontWeight
                        ),

                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                           fillColor:Colors.white ,
                            labelText: 'Username',
                            counterStyle: TextStyle(color: Colors.white)),
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'iltimos parolni kiriting.';
                          } else if (!email.contains('7')) {
                            return 'To\'ri email kiriting';
                          }
                        },
                        onSaved: (email) {
                          _authDate['email'] = email!;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        // style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration:
                            const InputDecoration(labelText: 'Password',focusColor: Colors.white),
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter the password.';
                          }
                        },
                        onSaved: (password) {
                          _authDate['password'] = password!;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            sumbit();
                          },
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
