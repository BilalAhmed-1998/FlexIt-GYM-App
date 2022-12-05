import 'package:flexit_gym/screens/bmiCalculatorPage.dart';
import 'package:flexit_gym/screens/dietPage.dart';
import 'package:flexit_gym/screens/homePage.dart';
import 'package:flexit_gym/screens/loginScreen.dart';
import 'package:flexit_gym/screens/signUpScreen.dart';
import 'package:flexit_gym/screens/splashScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
// Wrapper.routeName: (context) => Wrapper(),
  homePage.routeName: (context) => homePage(),
  DietPage.routeName: (context) => DietPage(),
  loginScreen.routeName: (context) => loginScreen(),
  signUpScreen.routeName: (context) => signUpScreen(),
  BmiCalculatorPage.routeName: (context) => BmiCalculatorPage(),
};
