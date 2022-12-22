import 'package:flexit_gym/Classes/MealItem.dart';
import 'package:flexit_gym/data.dart';
import 'package:flexit_gym/screens/dietPage.dart';
import 'package:flexit_gym/services/databaseService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'meaIItemCard.dart';

class MealCard extends StatefulWidget {
  //const MealCard({Key? key}) : super(key: key);
  String name;
  List<MealItem> mealItems;
  String currentDay;
  int mealNo;

  MealCard({this.name, this.mealItems, this.currentDay, this.mealNo});

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff0A0A0A).withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 12,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              (!databaseMealCheck[widget.currentDay][widget.mealNo])
                  ? InkWell(
                      onTap: () async {
                        if (widget.currentDay != current_day) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Only Today's meal can be updated!")));
                        } else {
                          setState(() {
                            databaseMealCheck[current_day][widget.mealNo] =
                                true;
                            circularProgressValues[0] += meals[current_day][widget.mealNo].PP;
                            circularProgressValues[1] += meals[current_day][widget.mealNo].FP;
                            circularProgressValues[2] += meals[current_day][widget.mealNo].GP;
                            circularProgressValues[3] += meals[current_day][widget.mealNo].VP;
                            circularProgressValues[4] += meals[current_day][widget.mealNo].DP;
                            food_val += 252;
                            currentCalorieGoal+=0.25;
                          });
                          await DatabaseCollection.updateMealValues();
                        }
                      },
                      child: Icon(
                        Icons.check_box_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                    )
                  : Icon(
                      Icons.check_box,
                      color: Colors.green,
                      size: 24,
                    )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                for (var i = 0; i < widget.mealItems.length; i++)
                  MealItemCard(
                      img: widget.mealItems[i].img,
                      desc: widget.mealItems[i].itemDesc,
                      title: widget.mealItems[i].itemTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
