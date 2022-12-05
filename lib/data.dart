import 'package:flexit_gym/Classes/Meal.dart';
import 'package:flexit_gym/Classes/MealItem.dart';
import 'package:flutter/material.dart';

int goal_val = 2012;
int food_val = 412;
int exercise_val = 296;

Map<String, List<Meal>> meals = {
  'Monday': [
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)'),
        ],
        DP: 3,
        FP: 0,
        GP: 1,
        PP: 1,
        VP: 0),
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber'),
        ],
        DP: 0,
        FP: 0,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)'),
        ],
        DP: 0,
        FP: 3,
        GP: 1,
        PP: 1,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes'),
        ],
        DP: 0,
        FP: 3,
        GP: 1,
        PP: 1,
        VP: 0),
  ],
  'Tuesday': [
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber'),
        ],
        DP: 0,
        FP: 0,
        GP: 1,
        PP: 1,
        VP: 2),
  ],
  'Wednesday': [
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes'),
        ],
        DP: 0,
        FP: 3,
        GP: 1,
        PP: 1,
        VP: 0),
  ],
  'Thursday': [
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)'),
        ],
        DP: 3,
        FP: 0,
        GP: 1,
        PP: 1,
        VP: 0),
  ],
  'Friday': [
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)'),
        ],
        DP: 3,
        FP: 0,
        GP: 1,
        PP: 1,
        VP: 0),
  ],
  'Saturday': [
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber'),
        ],
        DP: 0,
        FP: 0,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)'),
        ],
        DP: 0,
        FP: 3,
        GP: 1,
        PP: 1,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes'),
        ],
        DP: 0,
        FP: 3,
        GP: 1,
        PP: 1,
        VP: 0),
  ]
};

/// Progress Data below////
///
List<String> circularProgressImages = [
  'assets/images/Hotdog.png',
  'assets/images/Strawberry.png',
  'assets/images/Toast.png',
  'assets/images/Veg.png',
  'assets/images/Milk.png',
];

List<String> circularProgressNames = [
  'Protein',
  'Fruit',
  'Grain',
  'Veg',
  'Dairy',
];

List<Color> circularProgressColors = [
  Colors.deepOrange,
  Color(0xffFF2C49),
  Color(0xffF9AF38),
  Color(0xff9CFF9A),
  Color(0xff2D9556),
];

List<double> circularProgressValues = [
  1.5,
  1.8,
  2.5,
  3.0,
  3.6,
];
