import 'package:flutter/material.dart';

class Exercise {
  String title, img, instructions, tips, url;
  int strengthLevel;
  List<String> muscleNames, bmiCategory;
  Map<String, dynamic> equipments;

  Exercise(
      {this.title,
      this.url,
      this.img,
      this.equipments,
      this.strengthLevel,
      this.bmiCategory,
      this.instructions,
      this.muscleNames,
      this.tips});
}
