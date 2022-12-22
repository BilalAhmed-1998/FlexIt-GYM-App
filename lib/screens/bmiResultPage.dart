import 'package:flexit_gym/cards/loadingCard.dart';
import 'package:flexit_gym/screens/homePage.dart';
import 'package:flexit_gym/services/databaseService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cards/BlueButton.dart';

class BmiResultPage extends StatefulWidget {
  //const BmiResultPage({Key? key}) : super(key: key);
  static const routeName = '/BmiResultPage';
  double result_val;
  String text,quote;
  int val;

  BmiResultPage({this.result_val}) {
    if (result_val < 18.5) {
      text = 'Underweight!';
      val = 0;
      quote = '.When it burns, is when you’re just getting started. That’s when you get stronger!';
    } else if (result_val >= 18.5 && result_val < 25.0) {
      text = 'Healthy!';
      val = 1;
      quote = 'On the other side of your workout is the body and health you want!';

    } else if (result_val >= 25.0 && result_val < 30.0) {
      text = 'Over Weight!';
      val = 2;
      quote = 'The reason fat men are good-natured is they can neither fight nor run';

    } else if (result_val >= 30) {
      text = 'Obesity!';
      val = 3;
      quote = 'Working out is never convenient. But neither is illness, diabetes and obesity!';
    }
  }

  @override
  State<BmiResultPage> createState() => _BmiResultPageState();
}

class _BmiResultPageState extends State<BmiResultPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
    backgroundColor: Color(0xff1A1F38),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'BMI Result',
          style: TextStyle(
              fontFamily: 'regular',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black),
        ),
      ),
      body: Stack(
        children:[
          Container(
            height: height,
            width: width,
            child: Image.asset('assets/images/bmi result.png'),
          ),
          Container(
            color: Colors.transparent,
            height: 500,
            width: width,
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Result:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.result_val.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(widget.quote,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),

                ),
              ],
            ),
          ),
        ]

      ),
      bottomNavigationBar: InkWell(
        onTap: () async {
          showDialog(
              context: context,
              builder: (BuildContext context) => LoadingCard(
                    text: "Loading...",
                  ));

          bool result =
          await DatabaseCollection.setBmiCategory(widget.val, context);


          if (result) {
            await DatabaseCollection.setMealValues();
            await DatabaseCollection.setExerciseValues();
            Navigator.pop(context);
            Navigator.pushNamed(context, homePage.routeName);
          }
          else{
            Navigator.pop(context);
          }
        },
        child: BlueButton(
          width: width,
          height: 200,
          text: 'Continue',
        ),
      ),
    );
  }
}
