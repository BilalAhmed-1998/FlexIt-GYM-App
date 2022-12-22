

import 'package:flexit_gym/Classes/PlanDetails.dart';

class Plan{
  String title, img;
  int days,strengthLevel;
  List <String> traits;
  PlanDetails planDetails;

  Plan({this.planDetails,this.traits,this.title,this.img,this.days,this.strengthLevel});

}