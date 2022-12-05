import 'package:flexit_gym/Classes/MealItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'meaIItemCard.dart';

class MealCard extends StatelessWidget {
  //const MealCard({Key? key}) : super(key: key);
  String name;
  List<MealItem> mealItems;

  MealCard({this.name, this.mealItems});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff0A0A0A).withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 12,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.edit_outlined,
                color: Colors.black,
                size: 24,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                for (var i = 0; i < mealItems.length; i++)
                  MealItemCard(
                      img: 'assets/images/Strawberry.png',
                      desc: mealItems[i].itemDesc,
                      title: mealItems[i].itemTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
