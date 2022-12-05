import 'package:flexit_gym/data.dart';
import 'package:flexit_gym/routes.dart';
import 'package:flexit_gym/screens/dietPage.dart';
import 'package:flexit_gym/screens/homePage.dart';
import 'package:flexit_gym/screens/loginScreen.dart';
import 'package:flexit_gym/screens/signUpScreen.dart';
import 'package:flexit_gym/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flex It',
        theme: ThemeData(
          fontFamily: 'medium',
          primaryColor: Colors.white,
// primarySwatch: Colors.grey,
        ),
        routes: routes,
        home: splashScreen(
            1,
            FirebaseAuth.instance.currentUser != null
                ? homePage.routeName
                : loginScreen.routeName));
  }
}
