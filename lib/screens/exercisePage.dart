import 'package:flexit_gym/Classes/Exercise.dart';
import 'package:flexit_gym/cards/ExerciseCard.dart';
import 'package:flexit_gym/cards/blueButton.dart';
import 'package:flexit_gym/exerciseData.dart';
import 'package:flexit_gym/screens/exerciseCardScreen.dart';
import 'package:flexit_gym/screens/exerciseDetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisePage extends StatefulWidget {
  // const ExercisePage({Key? key}) : super(key: key);

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  List<Exercise> mainShowList=[];
  void matchString(String query) {
    List<Exercise> matchQuery = [];
    if (query!="") {

      for (var ex in exercisesList) {
        if (ex.title.toLowerCase().contains(query.toLowerCase())) {
          matchQuery.add(ex);
        }
      }
    }
    setState(() {
      mainShowList = matchQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoSearchTextField(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              autofocus: false,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,

              ),
              onChanged: (val) {
                matchString(val);
              },
              placeholderStyle:const TextStyle(
                color: Color(0xff555555),
              ),
              placeholder: 'Search Exercises',
            ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                    Navigator.pushNamed(context, ExerciseCardScreen.routeName);
                },
                  child: BlueButton(text: "Check today's Exercises",)),
              mainShowList.isEmpty?
              Flexible(
                flex: 1,
                child: ListView.builder(
                    itemCount: exercisesList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
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
                        child: ExerciseCard(exercise: exercisesList[index]),
                      );
                    }),
              ):
            Flexible(
              flex: 1,
              child: ListView.builder(
                  itemCount: mainShowList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExerciseDetailPage(
                                  exercise: mainShowList[index],
                                )
                            )
                        );
                      },
                      child: ExerciseCard(exercise: mainShowList[index]),
                    );
                  }),
            ),
            SizedBox(
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
