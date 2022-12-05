import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  //const BlueButton({Key? key}) : super(key: key);
  String text;
  double height, width;

  BlueButton({this.text, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xff23A6F0), borderRadius: BorderRadius.circular(10)),
      height: 55,
      width: width,
      child: Text(
        'Find your ideal regime',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
