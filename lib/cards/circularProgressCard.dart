import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularProgressCard extends StatelessWidget {
  //const CircularProgressCard({Key? key}) : super(key: key);
  String name, img;
  double val;
  Color color;

  CircularProgressCard({this.img, this.val, this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 95,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$val/4.0',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          ),
          Stack(
            children: [
              Container(
                width: 45,
                height: 45,
                child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0.0, end: val / 4),
                    duration: const Duration(milliseconds: 700),
                    builder: (context, value, _) => CircularProgressIndicator(
                          color: color,
                          backgroundColor: Colors.grey.shade200,
                          value: value,
                          strokeWidth: 3.5,
                        )),
              ),
              Container(
                width: 45,
                height: 45,
                alignment: Alignment.center,
                child: Image.asset(
                  img,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
