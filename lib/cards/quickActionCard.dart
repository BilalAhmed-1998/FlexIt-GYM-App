import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuickActionCard extends StatelessWidget {
  String title, desc;
  double cal;
  String img;

  QuickActionCard({this.title, this.cal, this.desc, this.img});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 13),
      margin: EdgeInsets.only(bottom: 11),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff0A0A0A).withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 12,
            offset: Offset(0, 4),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 9, 10, 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                      color: Color(0xff858585), fontSize: 12, height: 3),
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(
                    width: 230,
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0.0, end: cal),
                      duration: const Duration(milliseconds: 700),
                      builder: (context, value, _) => LinearProgressIndicator(
                        color: Color(0xff9CFF9A),
                        backgroundColor: Color(0xffE7E7E7),
                        minHeight: 7,
                        value: value,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            width: 60,
            child: Image.asset(
              img,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
