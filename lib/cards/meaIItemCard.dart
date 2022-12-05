import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealItemCard extends StatelessWidget {
  //const MealItemCard({Key? key}) : super(key: key);
  String title, desc, img;

  MealItemCard({this.img, this.desc, this.title});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(img)),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Container(
                    width: 220,
                    child: Text(
                      desc,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
