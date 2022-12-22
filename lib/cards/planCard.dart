import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Classes/Plan.dart';
import '../screens/planDetailsPage.dart';

class PlanCard extends StatelessWidget {
  Plan plan;
  PlanCard({this.plan});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlanDetailPage(
                  plan: plan,
                ))
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.5),
        height: 180,
        width: width,
        child: Stack(children: [
          Container(
              width: width,
              child: Image.asset(
               plan.img,
                fit: BoxFit.fitWidth,
              )),
          Container(
            width: width,
            color: Colors.grey.shade300.withOpacity(0.85),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(plan.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),),
                Row(
                  children: [
                    for(var i=0; i< plan.traits.length;i++)
                      Text('#'+plan.traits[i]+ ' ',
                        style: TextStyle(
                            height: 1.8,
                            color: Colors.black,
                            fontSize: 12
                        ),)
                  ],
                ),
                Text(plan.days.toString()+' days',
                  style: TextStyle(
                      color: Colors.black,
                      height: 1.5
                  ),),
                Text('Strength Level '+ plan.strengthLevel.toString(),
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      fontSize: 13,
                      fontStyle: FontStyle.italic),)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
