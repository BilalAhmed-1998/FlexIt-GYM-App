import 'package:flexit_gym/cards/blueButton.dart';
import 'package:flexit_gym/cards/circularProgressCard.dart';
import 'package:flexit_gym/data.dart';
import 'package:flexit_gym/screens/dietCardScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DietPage extends StatefulWidget {
  static const routeName = '/DietPage';

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  int currentDay = daysNumber[current_day];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 60, 50, 20),
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
                CupertinoIcons.minus,
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
            margin: EdgeInsets.only(top: 40, bottom: 55),
            height: 240,
            width: 240,
            child: Stack(children: [
              Container(
                  height: 240,
                  width: 240,
                  child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(
                          begin: 0.0,
                          end: (food_val + exercise_val) / goal_val),
                      duration: const Duration(milliseconds: 700),
                      builder: (context, value, _) => CircularProgressIndicator(
                            color: Colors.blue,
                            backgroundColor: Colors.grey.shade200,
                            value: value,
                            strokeWidth: 19.0,
                            semanticsValue:
                                (goal_val - food_val - exercise_val).toString(),
                            semanticsLabel: 'Remaining',
                          ))),
              Container(
                height: 240,
                width: 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (goal_val - food_val - exercise_val).toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
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
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
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
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, DietCardScreen.routeName);
            },
              child: BlueButton(text: "Check today's Meals",))
          // Container(
          //   height: 55,
          //   margin: EdgeInsets.only(top: 25, bottom: 10),
          //   padding: EdgeInsets.symmetric(horizontal: 10),
          //   decoration: BoxDecoration(
          //     border: Border(
          //       top: BorderSide(width: 1.0, color: Colors.grey.shade300),
          //       bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
          //     ),
          //     color: Colors.white,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       InkWell(
          //         onTap: () {
          //           setState(() {
          //             if (currentDay != 0) {
          //               currentDay--;
          //             }
          //           });
          //         },
          //         child: currentDay != 0
          //             ? Icon(
          //                 CupertinoIcons.chevron_left_circle,
          //                 color: Colors.black,
          //                 size: 22,
          //               )
          //             : Container(),
          //       ),
          //       Text(
          //         meals.keys.elementAt(currentDay),
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 17,
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           setState(() {
          //             if (currentDay != 5) {
          //               currentDay++;
          //             }
          //           });
          //         },
          //         child: currentDay != 5
          //             ? Icon(
          //                 CupertinoIcons.chevron_right_circle,
          //                 color: Colors.black,
          //                 size: 22,
          //               )
          //             : Container(),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 200,
          //   child: ListView.builder(
          //       itemCount: 4,
          //       itemBuilder: (BuildContext context, int index) {
          //         Meal meal = meals[meals.keys.elementAt(currentDay)].elementAt(index);
          //         return MealCard(name: meal.name, mealItems: meal.mealItems,currentDay: daysNumber.keys.elementAt(currentDay),mealNo: index);
          //       }),
          // )
        ],
      ),
    );
  }
}
