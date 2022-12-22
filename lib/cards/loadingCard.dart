import 'package:flutter/material.dart';

class LoadingCard extends StatelessWidget {
  static const routeName = '/LoadingCard';

  String text;

  LoadingCard({this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        backgroundColor: Colors.white,
        child: Container(
          margin: EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 6,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation((Color(0xff23A6F0))),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
