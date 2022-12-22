import 'package:flexit_gym/cards/ExerciseCard2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';
import '../exerciseData.dart';
import 'exerciseDetailPage.dart';


class ExerciseCardScreen extends StatefulWidget {
  static const routeName = '/ExerciseCardScreen';

  //const ExerciseCardScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseCardScreen> createState() => _ExerciseCardScreenState();
}

class _ExerciseCardScreenState extends State<ExerciseCardScreen> {
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
            Navigator.pop(context);
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
          height: height,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
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
              Flexible(
                flex: 1,
                child: ListView.builder(
                    itemCount: exercisesList.length,
                    itemBuilder: (context, index) {
                      return
                        InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExerciseDetailPage(
                                    exercise: exercisesList[index],
                                  )
                              )
                          );
                        },
                        child: ExerciseCard2(
                            exercise: exercises[daysNumber.keys.elementAt(currentDay)][index],
                          currentDay: daysNumber.keys.elementAt(currentDay),
                          exerciseNo: index,

                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
