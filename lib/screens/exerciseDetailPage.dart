import 'package:flexit_gym/Classes/Exercise.dart';
import 'package:flexit_gym/cards/blueButton.dart';
import 'package:flexit_gym/screens/exerciseVideoScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ExerciseDetailPage extends StatefulWidget {
  //const ExerciseDetailPage({Key? key}) : super(key: key);
  Exercise exercise;

  ExerciseDetailPage({this.exercise});

  @override
  State<ExerciseDetailPage> createState() => _ExerciseDetailPageState();
}

class _ExerciseDetailPageState extends State<ExerciseDetailPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Workout Information",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300,width: 1.5)
                ),
                child: Image.asset(
                  widget.exercise.img,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                height: 150,
                width:width,
                color: Colors.white,
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.exercise.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Strength Level ' + widget.exercise.strengthLevel.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          height: 1.8,
                          fontSize: 13,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'Target Muscle Groups',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          height: 3.5,
                          fontSize: 11),
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for(var i =0;i<widget.exercise.muscleNames.length;i++)
                              Container(
                                height: 30,
                                width: 80,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.blue)
                                ),
                                child: Text(widget.exercise.muscleNames[i],
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10
                                  ),),
                              )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200)),
                padding: EdgeInsets.all(12),
                height: 170,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Required Equipments',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var i = 0;
                          i <
                              widget.exercise.equipments.keys.length;
                          i++)
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.grey.shade200
                                  )
                              ),
                              padding:
                              EdgeInsets.symmetric(horizontal: 12),
                              width: 95,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    //height: 60,
                                    width: 60,
                                    child: Image.asset(
                                      widget.exercise.equipments.values
                                          .elementAt(i),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text( widget.exercise.equipments
                                      .keys
                                      .elementAt(i),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,

                                    ),)
                                ],
                              ),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: width,
                height: 220,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200)),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instructions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Text(
                          widget.exercise.instructions,
                          style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: 220,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200)),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tips',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Text(
                          widget.exercise.tips,
                          style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ExerciseVideoScreen(
                    url: widget.exercise.url,
                  )
              )
          );

        },
          child: BlueButton(text: 'Play Video',)),

    );
  }
}
