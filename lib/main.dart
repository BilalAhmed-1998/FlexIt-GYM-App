import 'package:flexit_gym/routes.dart';
import 'package:flexit_gym/screens/homePage.dart';
import 'package:flexit_gym/screens/loginScreen.dart';
import 'package:flexit_gym/screens/splashScreen.dart';
import 'package:flexit_gym/services/databaseService.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (FirebaseAuth.instance.currentUser != null) {
    await DatabaseCollection.getMealValues();
    await DatabaseCollection.getExerciseValues();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flex It',
        theme: ThemeData(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          fontFamily: 'medium',
          primaryColor: Colors.white,
        ),
        routes: routes,
        home:
        splashScreen(
            1,
            FirebaseAuth.instance.currentUser != null
                ? homePage.routeName
                : loginScreen.routeName)
    );
  }
}
