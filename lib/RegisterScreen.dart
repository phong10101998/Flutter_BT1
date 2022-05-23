// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:bt1/wiget/LoginButton.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.only(left: 40, right: 40),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffFF774E), Color(0xffFE3370)])),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
mainAxisAlignment : MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          Image.asset('assets/images/ic_logo.png', width: 264, height: 152),
          Text('Find and Meet people around\nyou to find LOVE',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center),
          Spacer(),
          Text(
            'SIGN IN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 2),
          TextField(
            style: TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration.collapsed(
                hintText: 'Enter Email', border: UnderlineInputBorder()),
          ),
          Spacer(flex: 2),
          TextField(
            style: TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration.collapsed(
                hintText: 'Enter Password', border: UnderlineInputBorder()),
          ),
          LoginButton('btnSignUp', 'GET STARTED', TextStyle(), '', false,
              () => {Navigator.pop(context)}),
          Spacer(
            flex: 8,
          )
        ],
      ),
    ));
  }
}
