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
        ],
      ),
    );
  }
}
