import 'package:flutter/material.dart';
import 'package:v_meet/resources/login_auth.dart';

import 'package:v_meet/widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Start Or Join Meeting',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          'assets/images/Login_page.png',
          width: 500,
        ),
        LoginButton(
          onPressed: () async {
            bool res = await _authMethods.signInWithGoogle(context);
            if (res) {
              Navigator.pushNamed(context, '/home');
            }
          },
          text: 'Login With Google',
        ),
      ]),
    );
  }
}
