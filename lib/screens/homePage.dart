import 'package:flexit_gym/cards/blueButton.dart';
import 'package:flexit_gym/cards/planCard.dart';
import 'package:flexit_gym/cards/quickActionCard.dart';
import 'package:flexit_gym/data.dart';
import 'package:flexit_gym/exerciseData.dart';
import 'package:flexit_gym/screens/dietPage.dart';
import 'package:flexit_gym/screens/exercisePage.dart';
import 'package:flexit_gym/screens/loginScreen.dart';
import 'package:flexit_gym/screens/planPage.dart';
import 'package:flexit_gym/services/databaseService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../userData.dart';

class homePage extends StatefulWidget {
  static const routeName = '/homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Text(
          'Flexit',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushNamedAndRemoveUntil(
                    context, loginScreen.routeName, (route) => false);
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: _getDrawerItemWidget(_currentIndex, width),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff23A6F0),
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Plans',
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            label: 'Exercises',
            icon: Icon(Icons.fitness_center_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Diet',
            icon: Icon(Icons.fastfood_rounded),
          ),
        ],
      ),
    );
  }

  _getDrawerItemWidget(int pos, double width) {
    switch (pos) {
      case 0:
        return Container(
          margin: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 13),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.bolt,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Quick Actions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                child: QuickActionCard(
                  title: 'Current Calorie Goal',
                  desc: 'You consumed ${currentCalorieGoal*100}% cal today',
                  img: 'assets/images/quick_action_01.png',
                  cal: currentCalorieGoal,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: QuickActionCard(
                    title: 'Today’s Workout Plan',
                    cal: total_exercise_val/12,
                    desc: '$total_exercise_val/${exercisesList.length} Excercises Completed!',
                    img: 'assets/images/quick_action_02.png'),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: BlueButton(
                  text: 'Find your ideal regime',
                  width: width,
                  height: 55,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.bolt,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Your Current Plan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              FutureBuilder(
                future: DatabaseCollection.getBmiCategory(context),
                  builder: (ctx, snapshot) {

                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error} occurred',
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  }

                  else if (snapshot.hasData) {
                    return  Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff0A0A0A).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: Offset(0, 4),
                              )
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300)),
                        child: PlanCard(
                          plan: currentPlan,
                        ));

                  }
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              }),

            ],
          ),
        );
      case 1:
        return PlanPage();
      case 2:
        return ExercisePage();
      case 3:
        return DietPage();
      default:
        return Text("Error");
    }
  }
}
