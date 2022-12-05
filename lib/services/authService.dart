import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //sign in with email password//
  Future signInWithEmailPassword(context, String email, String password) async {
    try {
      dynamic result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
      return null;
    }
  }

//Sign up with email password//
  Future signUpWithEmailPassword(context, String email, String password) async {
    try {
      dynamic result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }
}
