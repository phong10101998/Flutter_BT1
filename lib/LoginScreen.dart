// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bt1/wiget/LoginButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffFF774E), Color(0xffFE3370)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(),
          Image.asset('assets/images/ic_logo.png', width: 264, height: 152),
          Text('Find and Meet people around\nyou to find LOVE',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center),
          Spacer(),
          LoginButton(
              'btnFb',
              'Sign in with Facebook',
              TextStyle(),
              'assets/images/ic_fb.png',
              true,
              () => {}),
          LoginButton(
              'btnTwitter',
              'Sign in with Twiter',
              TextStyle(),
              'assets/images/ic_twiter.png',
              true,
              () => {}),
          LoginButton('btnSignUp', 'Sign up', TextStyle(), '', false,
              () => {Navigator.pushNamed(context, '/register')}),
          Text(
            'ALREADY REGISTERED SIGN IN',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
          Spacer(
            flex: 5,
          )
        ],
      ),
    ));
  }
}
