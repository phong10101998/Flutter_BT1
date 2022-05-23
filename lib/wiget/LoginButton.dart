// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:bt1/wiget/GradientText.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      this.keyBtn, this.text, this.style, this.iconUri, this.isShow,this.action);

  final String keyBtn;
  final String text;
  final TextStyle? style;
  final String iconUri;
  final bool isShow;
  final Function action;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
        key: Key(keyBtn),
        splashColor: Colors.grey,
        onTap: () => action(),
        child: Container(
          height: 58,
          padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 26),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              if (isShow) Image.asset(iconUri, width: 27, height: 27),
              if (isShow)
                Container(
                  margin:
                      EdgeInsets.only(top: 12, bottom: 12, right: 20, left: 15),
                  width: 3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xffFF774E), Color(0xffFE3370)])),
                ),
              GradientText(text,
                  gradient: LinearGradient(
                      colors: [Color(0xffFF774E), Color(0xffFE3370)]),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
            ],
          ),
        ));
  }
}
