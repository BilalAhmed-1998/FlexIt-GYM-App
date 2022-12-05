import 'package:flexit_gym/screens/homePage.dart';
import 'package:flexit_gym/screens/signUpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/authService.dart';

class loginScreen extends StatefulWidget {
  static const routeName = '/loginScreen';

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscured = true;
  String Emailtext = "";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(
              fontFamily: 'regular',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          color: Color(0xffF0F3FD),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 170,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      fillColor: Colors.transparent,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Color(0xff23A6F0), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1.5),
                      ),
                      hintText: 'Enter Email Address',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xff121212).withOpacity(0.7),
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: TextField(
                  obscureText: obscured,
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscured
                              ? Icons.visibility_off_outlined
                              : Icons.visibility,
                          color: Colors.grey.shade700,
                        ),
                        onPressed: () {
                          setState(() {
                            obscured = !obscured;
                          });
                        },
                      ),
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      fillColor: Colors.transparent,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Color(0xff23A6F0), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1.5),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xff121212).withOpacity(0.7),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () async {
                  Emailtext = emailController.text;
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(Emailtext);

                  if (Emailtext != "" && emailValid) {
                    final list = await FirebaseAuth.instance
                        .fetchSignInMethodsForEmail(Emailtext);
                    if (list.isNotEmpty) {
                      try {
                        FirebaseAuth.instance.sendPasswordResetEmail(
                            email: emailController.text);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "A link has been sent to your email successfully!")));
                      } on Exception catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("User not found!")));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Email Field is empty/invalid!")));
                  }
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                enableFeedback: true,
                onTap: () async {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Row(
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          CircularProgressIndicator.adaptive(
                            backgroundColor: Color(0xff23A6F0),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Signing In...",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )));
                  await AuthService().signInWithEmailPassword(
                      context, emailController.text, passwordController.text);
                  if (FirebaseAuth.instance.currentUser != null) {
                    Navigator.pushNamed(context, homePage.routeName);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff23A6F0),
                  ),
                  alignment: Alignment.center,
                  width: 342,
                  height: 56,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, signUpScreen.routeName);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff23A6F0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
