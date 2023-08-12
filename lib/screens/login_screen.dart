import 'package:flutter/material.dart';

import 'package:v_meet/widgets/login-page/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          onPressed: () {},
          text: 'Login With Google',
        ),
      ]),
    );
  }
}
