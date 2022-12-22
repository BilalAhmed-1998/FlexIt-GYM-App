import 'package:flexit_gym/screens/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Classes/Meal.dart';
import '../cards/mealCard.dart';
import '../data.dart';

class DietCardScreen extends StatefulWidget {
  static const routeName = '/DietCardScreen';

  //const DietCardScreen({Key? key}) : super(key: key);

  @override
  State<DietCardScreen> createState() => _DietCardScreenState();
}

class _DietCardScreenState extends State<DietCardScreen> {
  int currentDay = daysNumber[current_day];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.popAndPushNamed(context, homePage.routeName);
          },
          child: Icon(Icons.arrow_back,
            color: Colors.black,

          ),
        ),
        title: Text(
          "Meals Checklist",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 55,
                margin: EdgeInsets.only(bottom: 10),
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
                          if (currentDay != 0) {
                            currentDay--;
                          }
                        });
                      },
                      child: currentDay != 0
                          ? Icon(
                        CupertinoIcons.chevron_left_circle,
                        color: Colors.black,
                        size: 22,
                      )
                          : Container(),
                    ),
                    Text(
                      meals.keys.elementAt(currentDay),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (currentDay != 5) {
                            currentDay++;
                          }
                        });
                      },
                      child: currentDay != 5
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
                height: 700,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      Meal meal = meals[meals.keys.elementAt(currentDay)].elementAt(index);
                      return MealCard(name: meal.name, mealItems: meal.mealItems,currentDay: daysNumber.keys.elementAt(currentDay),mealNo: index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
