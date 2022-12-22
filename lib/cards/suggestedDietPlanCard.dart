import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Classes/Plan.dart';


class SuggestedDietPlanCard extends StatelessWidget {
  String img,title;

  SuggestedDietPlanCard({this.img,this.title});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
      children: [
        Image.asset('assets/images/Paleo_SuggestedDietPlan.png',
        fit: BoxFit.fitWidth,),
        Container(
          color: Colors.grey,
          child: Text(this.title,
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),

          ),
        )
      ],
      ),
    );
  }
}
