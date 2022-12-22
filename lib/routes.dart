import 'package:flexit_gym/cards/loadingCard.dart';
import 'package:flexit_gym/screens/bmiCalculatorPage.dart';
import 'package:flexit_gym/screens/bmiResultPage.dart';
import 'package:flexit_gym/screens/dietCardScreen.dart';
import 'package:flexit_gym/screens/dietPage.dart';
import 'package:flexit_gym/screens/exerciseCardScreen.dart';
import 'package:flexit_gym/screens/homePage.dart';
import 'package:flexit_gym/screens/loginScreen.dart';
import 'package:flexit_gym/screens/signUpScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  homePage.routeName: (context) => homePage(),
  DietPage.routeName: (context) => DietPage(),
  loginScreen.routeName: (context) => loginScreen(),
  signUpScreen.routeName: (context) => signUpScreen(),
  BmiCalculatorPage.routeName: (context) => BmiCalculatorPage(),
  BmiResultPage.routeName: (context) => BmiResultPage(),
  LoadingCard.routeName: (context) => LoadingCard(),
  DietCardScreen.routeName: (context) => DietCardScreen(),
  ExerciseCardScreen.routeName: (context) => ExerciseCardScreen(),
};
