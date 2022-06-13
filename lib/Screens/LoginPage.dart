import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/login-background.png',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: 400,
            height: 600,
            color: Colors.red,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 100,
                        child: Image.asset(
                            'assets/images/login-avatar.png',),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200)
                        ),
                      ),
                      Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
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
                        obscureText: true,
                        decoration:
                            const InputDecoration(labelText: 'Password'),
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
                      ElevatedButton(
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
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.underline),
                        ),
                      )
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
