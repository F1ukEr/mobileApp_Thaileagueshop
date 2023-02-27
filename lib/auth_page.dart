import 'package:flutter/material.dart';
import 'package:shop_final/register.dart';
import 'package:shop_final/signin.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool loginPage = true;

  void toggleScreens() {
    setState(() {
      loginPage = !loginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loginPage) {
      return SignIn(RegisterPage: toggleScreens);
    } else {
      return RegisterPage(loginPage: toggleScreens);
    }
  }
}
