import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalculatorPage extends StatefulWidget {
  //const BmiCalculatorPage({Key? key}) : super(key: key);
  static const routeName = '/BmiCalculatorPage';

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
      body: Container(
        margin: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: 130,
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 60,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: 130,
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 60,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
