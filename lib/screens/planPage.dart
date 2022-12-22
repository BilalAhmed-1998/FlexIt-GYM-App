import 'package:flexit_gym/cards/planCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class PlanPage extends StatefulWidget {
  //const PlanPage({Key? key}) : super(key: key);

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            for (var i = 0; i < plans.length; i++)
              PlanCard(plan: plans[i])
          ],
        ),
      ),
    );
  }
}
