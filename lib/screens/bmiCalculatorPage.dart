import 'package:flexit_gym/cards/blueButton.dart';
import 'package:flexit_gym/screens/bmiResultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_button/counter_button.dart';
import 'package:flutter/services.dart';

class BmiCalculatorPage extends StatefulWidget {
  //const BmiCalculatorPage({Key? key}) : super(key: key);
  static const routeName = '/BmiCalculatorPage';

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  Color maleSelectedColor = Colors.white;
  Color femaleSelectedColor = Colors.white;
  int genderVal, weight = 0, age = 0, feet = 0, inch = 0;
  TextEditingController weightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'BMI Caculator',
          style: TextStyle(
              fontFamily: 'regular',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height-200,
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        maleSelectedColor = Color(0xff1A1F38);
                        femaleSelectedColor = Colors.white;
                        genderVal = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: 130,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: maleSelectedColor, width: 3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.male,
                            color: maleSelectedColor,
                            size: 50,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                color: maleSelectedColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        femaleSelectedColor = Color(0xff1A1F38);
                        maleSelectedColor = Colors.white;
                        genderVal = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: 130,
                      height: 160,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: femaleSelectedColor, width: 3),
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.female,
                            color: femaleSelectedColor,
                            size: 50,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                color: femaleSelectedColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Height',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Feet',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              CounterButton(
                                loading: false,
                                addIcon: Icon(Icons.add_circle),
                                removeIcon: Icon(Icons.remove_circle),
                                onChange: (int val) {
                                  setState(() {
                                    if (val >= 0) {
                                      feet = val;
                                    }
                                  });
                                },
                                count: feet,
                                countColor: Colors.white,
                                buttonColor: Colors.white,
                                progressColor: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Inch',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              CounterButton(
                                loading: false,
                                addIcon: Icon(Icons.add_circle),
                                removeIcon: Icon(Icons.remove_circle),
                                onChange: (int val) {
                                  setState(() {
                                    if (val >= 0 && val <= 12) {
                                      inch = val;
                                    }
                                  });
                                },
                                count: inch,
                                countColor: Colors.white,
                                buttonColor: Colors.white,
                                progressColor: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: 130,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.transparent,
                          width: 130,
                          height: 30,
                          child: TextField(
                            controller: weightController,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,
                            fontSize: 19),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 9, color: Colors.white),
                                    borderRadius: BorderRadius.circular(50)),
                            contentPadding: EdgeInsets.only(bottom: 10)),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: 130,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.transparent,
                          width: 130,
                          height: 30,
                          child: TextField(
                            controller: ageController,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,
                                fontSize: 19),
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 9, color: Colors.white),
                                    borderRadius: BorderRadius.circular(50)),
                                contentPadding: EdgeInsets.only(bottom: 10)),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {


           weight = int.parse(weightController.value.text);
           age = int.parse(ageController.value.text);

          if (weight != 0 && feet != 0) {
            double height = (feet * 0.3048) + (inch * 0.025);
            double result = (weight / (height * height));
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BmiResultPage(
                        result_val: result,
                      )),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(""
                  "Kindly fill weight & height."),
            ));
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
