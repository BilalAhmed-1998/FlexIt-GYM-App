

import 'package:flexit_gym/Classes/Exercise.dart';
import 'package:flexit_gym/data.dart';
import 'package:flexit_gym/userData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/databaseService.dart';

class ExerciseCard extends StatefulWidget {
  Exercise exercise;
  int exerciseNo;
  String currentDay;

  ExerciseCard({this.exercise});

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 5),
      width: width,
      height: 90,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff0A0A0A).withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 12,
            offset: Offset(0, 4),
          )
        ],
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: 80,
            height: 80,
            child: Image.asset(widget.exercise.img,fit: BoxFit.cover,),

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.exercise.title,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              Text(currentPlan.title,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  height: 2,
                  fontWeight: FontWeight.normal,
                ),),
              Text('Curated by: FlexIT',
                style: TextStyle(
                  fontSize: 10,
                  height: 1.5,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                ),),


            ],
          ),


        ],
      ),
    );
  }
}
