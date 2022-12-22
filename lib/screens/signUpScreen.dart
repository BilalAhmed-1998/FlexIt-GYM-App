import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/authService.dart';
import 'bmiCalculatorPage.dart';

class signUpScreen extends StatefulWidget {
  static const routeName = '/signUpScreen';

  @override
  _signUpScreenState createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscured = true;
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
          'Sign Up',
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

              ///email field///
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

              ///password field///
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: obscured,
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
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xff121212).withOpacity(0.7),
                      )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                enableFeedback: true,
                onTap: () async {
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(emailController.text);
                  bool passValid =
                      RegExp("^.{8,}\$").hasMatch(passwordController.text);

                  if (emailValid &&
                      passValid &&
                      FirebaseAuth.instance.currentUser == null) {
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
                              "Signing Up...",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )));

                    await AuthService().signUpWithEmailPassword(
                        context, emailController.text, passwordController.text);
                    await FirebaseAuth.instance.currentUser
                        .sendEmailVerification();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("a verification email has been sent!")));
                    if(FirebaseAuth.instance.currentUser!=null){
                      Navigator.pushNamed(context, BmiCalculatorPage.routeName);

                    }
                  } else {
                    (!emailValid)
                        ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Invalid EMAIL'),
                          ))
                        : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Successful!'),
                          ));
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
                    'Sign Up',
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
                      'Already have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
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
