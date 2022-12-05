import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  static const routeName = '/splash_screen';
  int duration = 0;
  String goTopage = "";

  splashScreen(this.duration, this.goTopage);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(
          seconds: duration,
        ), () async {
      Navigator.pushNamed(context, goTopage);
    });

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}