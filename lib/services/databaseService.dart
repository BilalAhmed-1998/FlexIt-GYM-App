import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flexit_gym/data.dart';
import 'package:flexit_gym/exerciseData.dart';
import 'package:flexit_gym/userData.dart';
import 'package:flutter/material.dart';

class DatabaseCollection {
  static final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("User");

  static Future setBmiCategory(int val, context) async {
    try {
      await userCollection
          .doc(FirebaseAuth.instance.currentUser.uid)
          .set({'BMI Category': val});
      return true;
    } on Exception catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      return false;
    }
  }

  static Future getBmiCategory(context) async {
    try {
      await userCollection
          .doc(FirebaseAuth.instance.currentUser.uid)
          .get()
          .then((value) => {currentPlan = plans[value.get('BMI Category')]});
      return true;
    } on Exception catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      return false;
    }
  }

  static Future setMealValues() async {
    await userCollection.doc(FirebaseAuth.instance.currentUser.uid).update({
      'Meals Check': {
        'Monday': [false, false, false, false],
        'Tuesday': [false, false, false, false],
        'Wednesday': [false, false, false, false],
        'Thursday': [false, false, false, false],
        'Friday': [false, false, false, false],
        'Saturday': [false, false, false, false],
      }
    });
  }

  static Future updateMealValues() async {
    try {
      await userCollection.doc(FirebaseAuth.instance.currentUser.uid).update({
        'Meals Check': {
          for (var i = 0; i < databaseMealCheck.keys.length; i++)
            databaseMealCheck.keys.elementAt(i):
                databaseMealCheck.values.elementAt(i)
        }
      });
      return true;
    } on Exception catch (e) {
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text(e.toString())));
      return false;
    }
  }

  static void calculateCircularProgressValues() {
    for (var i = 0; i < databaseMealCheck[current_day].length; i++) {
      if (databaseMealCheck[current_day][i] == true) {
        circularProgressValues[0] += meals[current_day][i].PP;
        circularProgressValues[1] += meals[current_day][i].FP;
        circularProgressValues[2] += meals[current_day][i].GP;
        circularProgressValues[3] += meals[current_day][i].VP;
        circularProgressValues[4] += meals[current_day][i].DP;
        food_val += 252;
        currentCalorieGoal += 0.25;
      }
    }
  }

  static void calculateExerciseProgressValues() {
    for (var i = 0; i < databaseExerciseCheck[current_day].length; i++) {
      if (databaseExerciseCheck[current_day][i] == true) {
        exercise_val+= 84;
        total_exercise_val+=1;



      }
    }
  }

  static Future getMealValues() async {
    try {
      await userCollection
          .doc(FirebaseAuth.instance.currentUser.uid)
          .get()
          .then((value) => {databaseMealCheck = value.get('Meals Check')});

      calculateCircularProgressValues();

      return true;
    } on Exception catch (e) {
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text(e.toString())));
      return false;
    }
  }

  static Future setExerciseValues() async {
    await userCollection.doc(FirebaseAuth.instance.currentUser.uid).update({
      'Exercises Check': {
        'Monday' : [false,false,false,false,false,false,false,false,false,false,false,false],
        'Tuesday' : [false,false,false,false,false,false,false,false,false,false,false,false],
        'Wednesday' : [false,false,false,false,false,false,false,false,false,false,false,false],
        'Thursday' : [false,false,false,false,false,false,false,false,false,false,false,false],
        'Friday' : [false,false,false,false,false,false,false,false,false,false,false,false],
        'Saturday' : [false,false,false,false,false,false,false,false,false,false,false,false],
      }
    });
  }

  static Future updateExerciseValues() async {
    try {
      await userCollection.doc(FirebaseAuth.instance.currentUser.uid).update({
        'Exercises Check': {
          for (var i = 0; i < databaseExerciseCheck.keys.length; i++)
            databaseExerciseCheck.keys.elementAt(i):
            databaseExerciseCheck.values.elementAt(i)
        }
      });
      return true;
    } on Exception catch (e) {
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text(e.toString())));
      return false;
    }
  }

  static Future getExerciseValues() async {
    try {
      await userCollection
          .doc(FirebaseAuth.instance.currentUser.uid)
          .get()
          .then((value) => {databaseExerciseCheck = value.get('Exercises Check')});
      calculateExerciseProgressValues();

      return true;
    } on Exception catch (e) {
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text(e.toString())));
      return false;
    }
  }

}
