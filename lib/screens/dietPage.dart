import 'package:flexit_gym/Classes/Meal.dart';
import 'package:flexit_gym/cards/circularProgressCard.dart';
import 'package:flexit_gym/cards/mealCard.dart';
import 'package:flexit_gym/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DietPage extends StatefulWidget {
  static const routeName = '/DietPage';

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  int current_day = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 40, 30, 20),
                child: Column(
                  children: [
                    Text(
                      goal_val.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Goal',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                CupertinoIcons.minus,
                color: Colors.black,
                size: 13,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 40, 30, 20),
                child: Column(
                  children: [
                    Text(
                      food_val.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Food',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.black,
                size: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 40, 30, 20),
                child: Column(
                  children: [
                    Text(
                      exercise_val.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Exercise',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                CupertinoIcons.equal,
                color: Colors.black,
                size: 15,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 35),
            height: 210,
            width: 210,
            child: Stack(children: [
              Container(
                  height: 210,
                  width: 210,
                  child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0.0, end: 0.66),
                      duration: const Duration(milliseconds: 700),
                      builder: (context, value, _) => CircularProgressIndicator(
                            color: Colors.blue,
                            backgroundColor: Colors.grey.shade200,
                            value: value,
                            strokeWidth: 19.0,
                            semanticsValue:
                                (goal_val - food_val + exercise_val).toString(),
                            semanticsLabel: 'Remaining',
                          ))),
              Container(
                height: 210,
                width: 210,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (goal_val - food_val + exercise_val).toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      'Remaining',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < 5; i++)
                  CircularProgressCard(
                      img: circularProgressImages[i],
                      val: circularProgressValues[i],
                      name: circularProgressNames[i],
                      color: circularProgressColors[i]),
              ],
            ),
          ),
          Container(
            height: 55,
            margin: EdgeInsets.only(top: 25, bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.grey.shade300),
                bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
              ),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (current_day != 0) {
                        current_day--;
                      }
                    });
                  },
                  child: current_day != 0
                      ? Icon(
                          CupertinoIcons.chevron_left_circle,
                          color: Colors.black,
                          size: 22,
                        )
                      : Container(),
                ),
                Text(
                  meals.keys.elementAt(current_day),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (current_day != 5) {
                        current_day++;
                      }
                    });
                  },
                  child: current_day != 5
                      ? Icon(
                          CupertinoIcons.chevron_right_circle,
                          color: Colors.black,
                          size: 22,
                        )
                      : Container(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: meals[meals.keys.elementAt(current_day)].length,
                itemBuilder: (BuildContext context, int index) {
                  Meal meal =
                      meals[meals.keys.elementAt(current_day)].elementAt(index);
                  return MealCard(name: meal.name, mealItems: meal.mealItems);
                }),
          )
        ],
      ),
    );
  }
}
