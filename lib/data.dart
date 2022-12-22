import 'package:flexit_gym/Classes/Meal.dart';
import 'package:flexit_gym/Classes/MealItem.dart';
import 'package:flexit_gym/Classes/PlanDetails.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import 'Classes/Plan.dart';

int goal_val = 2016;
int food_val = 0;
int exercise_val = 0;
int total_exercise_val =0;
double currentCalorieGoal=0;
String current_day = DateFormat('EEEE').format(DateTime.now()).toString();


Map <String,dynamic> databaseMealCheck = {
  'Monday' : [false,false,false,false],
  'Tuesday' : [false,false,false,false],
  'Wednesday' : [false,false,false,false],
  'Thursday' : [false,false,false,false],
  'Friday' : [false,false,false,false],
  'Saturday' : [false,false,false,false],
};

Map <String,int> daysNumber = {
  'Monday' : 0,
  'Tuesday' : 1,
  'Wednesday' : 2,
  'Thursday' : 3,
  'Friday' : 4,
  'Saturday' : 5,
};


Map<String, List<Meal>> meals = {
  'Monday': [
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread',img: 'assets/images/Toast.png'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 3,
        FP: 0,
        GP: 2,
        PP: 2,
        VP: 0),
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)',img: 'assets/images/Toast.png'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber',img: 'assets/images/Veg.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas',img: 'assets/images/Strawberry.png'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 1,
        FP: 2,
        GP: 0,
        PP: 0,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes',
          img: 'assets/images/Strawberry.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
  ],
  'Tuesday': [
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas',img: 'assets/images/Strawberry.png'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 1,
        FP: 2,
        GP: 0,
        PP: 0,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes',
              img: 'assets/images/Strawberry.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread',img: 'assets/images/Toast.png'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 3,
        FP: 0,
        GP: 2,
        PP: 2,
        VP: 0),
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)',img: 'assets/images/Toast.png'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber',img: 'assets/images/Veg.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
  ],
  'Wednesday': [
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread',img: 'assets/images/Toast.png'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 3,
        FP: 0,
        GP: 2,
        PP: 2,
        VP: 0),
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)',img: 'assets/images/Toast.png'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber',img: 'assets/images/Veg.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas',img: 'assets/images/Strawberry.png'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 1,
        FP: 2,
        GP: 0,
        PP: 0,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes',
              img: 'assets/images/Strawberry.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
  ],
  'Thursday': [
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)',img: 'assets/images/Toast.png'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber',img: 'assets/images/Veg.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas',img: 'assets/images/Strawberry.png'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 1,
        FP: 2,
        GP: 0,
        PP: 0,
        VP: 0),
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread',img: 'assets/images/Toast.png'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 3,
        FP: 0,
        GP: 2,
        PP: 2,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes',
              img: 'assets/images/Strawberry.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
  ],
  'Friday': [
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread',img: 'assets/images/Toast.png'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 3,
        FP: 0,
        GP: 2,
        PP: 2,
        VP: 0),
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)',img: 'assets/images/Toast.png'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber',img: 'assets/images/Veg.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas',img: 'assets/images/Strawberry.png'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 1,
        FP: 2,
        GP: 0,
        PP: 0,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes',
              img: 'assets/images/Strawberry.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
  ],
  'Saturday': [
    Meal(
        name: 'Snacks',
        mealItems: [
          MealItem(itemTitle: 'Fruits', itemDesc: '1 Apple, 2 Bananas',img: 'assets/images/Strawberry.png'),
          MealItem(
              itemTitle: 'Tea', itemDesc: 'a cup of green tea (without sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 1,
        FP: 2,
        GP: 0,
        PP: 0,
        VP: 0),
    Meal(
        name: 'Dinner',
        mealItems: [
          MealItem(itemTitle: 'Fish', itemDesc: 'Steam or boiled fish',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Sweet Potatoes',
              itemDesc: '1-2 Boiled Sweet Potatoes',
              img: 'assets/images/Strawberry.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),
    Meal(
        name: 'Breakfast',
        mealItems: [
          MealItem(
              itemTitle: 'Wheat Bread', itemDesc: '2 slices whole wheat bread',img: 'assets/images/Toast.png'),
          MealItem(itemTitle: 'Eggs', itemDesc: '4-5 eggs whites',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Coffee',
              itemDesc: 'a cup of coffee (without milk & sugar)',img: 'assets/images/Milk.png'),
        ],
        DP: 3,
        FP: 0,
        GP: 2,
        PP: 2,
        VP: 0),
    Meal(
        name: 'Lunch',
        mealItems: [
          MealItem(
              itemTitle: 'Chicken', itemDesc: 'Skinless chicken breast piece',img: 'assets/images/Hotdog.png'),
          MealItem(
              itemTitle: 'Brown Rice ',
              itemDesc: 'half cup of brown rice (boiled)',img: 'assets/images/Toast.png'),
          MealItem(
              itemTitle: 'Vegitables',
              itemDesc: 'carrots, broccoli & cucumber',img: 'assets/images/Veg.png'),
        ],
        DP: 0,
        FP: 1,
        GP: 1,
        PP: 1,
        VP: 2),

  ]
};

/// Progress Data below////

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
  0,
  0,
  0,
  0,
  0,
];

Map<String, String> underWeightSchedule = {
  'Monday': 'Chest and triceps.',
  'Tuesday': 'Back and biceps',
  'Wednesday': 'Legs and shoulders',
  'Thursday': 'Take Day off',
  'Friday': 'Back and biceps',
  'Saturday': 'Legs and shoulders',
};

Map<String, String> advanceWeightSchedule = {
  'Monday': 'chest, shoulders, triceps, forearms',
  'Tuesday': 'hamstrings, quadriceps, glutes',
  'Wednesday': 'Take day off',
  'Thursday': 'biceps, back, abdominals, traps, lats',
  'Friday': 'Legs',
  'Saturday': 'arms',
};



Map<String, dynamic> equipments = {
  'Dumbell': 'assets/images/dumbell.png',
  'Barbell': 'assets/images/barbell.png',
  'Skipping Rope': 'assets/images/skipping_rope.png',
  'Calisthenics Bar': 'assets/images/calisthenics bar.png',
};

Map <String,dynamic> suggestedDietPlans = {
  'Paleo': 'assets/images/Paleo_SuggestedDietPlan.png',
  'Protein+': 'assets/images/Protein+_SuggestedDietPlan.png',
  'Keto': 'assets/images/Keto_SuggestedDietPlan.png',
};
///BMI CATEGORIES////

List <String> bmiCategories = ['Underweight','Intermediate Fitness', 'Advance Fitness','Calisthenics'];

///plans & exercises///

List<Plan> plans = [
  Plan(
      title: 'Underweight',
      img: 'assets/images/loseweight.png',
      days: 4,
      strengthLevel: 1,
      traits: ['WieghtLose', 'Fitness'],
      planDetails: PlanDetails(
        detials:"Frustrated with your lack of progress as a beginner? Stack on size with this total-body plan. This exercise plan for underweight may include a combination of beginner-friendly strength training, stretching exercises and much more!",
        schedule: underWeightSchedule,
        equipments: equipments,
          suggestedDietPlans: suggestedDietPlans

      )),
  Plan(
      title: 'Intermediate Fitness',
      img: 'assets/images/healthy.png',
      days: 5,
      strengthLevel: 2,
      traits: ['bulky', 'Fitness'],
      planDetails: PlanDetails(
        detials:"Have you finished the first program? Well this intermediate fitness plan is the next logical step! This intermediate routine would typically be focused on fitness and both building muscle mass and defining each muscle groups.",
        schedule: advanceWeightSchedule,
        equipments: equipments,
          suggestedDietPlans: suggestedDietPlans

      )),
  Plan(
      title: 'Advance Fitness',
      img: 'assets/images/AdvanceFitness.png',
      days: 6,
      strengthLevel: 4,
      traits: ['WieghtLose', 'Fitness', 'Cardio'],
      planDetails: PlanDetails(
        detials: "Now that you are ready to move on to an advanced workout plan, this one is typically geared to produce specific results and help catapult you to the next fitness level. They are strenuous, grueling and will push you to your limits, but are capable of producing amazing results.",
          schedule: underWeightSchedule,
        equipments: equipments,
          suggestedDietPlans: suggestedDietPlans

      )),
  Plan(
      title: 'Calisthenics',
      img: 'assets/images/Calisthenics.png',
      days: 7,
      strengthLevel: 5,
      traits: ['WieghtLose', 'Fitness', 'Cardio'],
      planDetails: PlanDetails(
        detials:"This calisthenics plan will help you build strength using only your body weight, instead of weights or other resistance devices. It works for most fitness levels, and people can modify them to make them easier or more difficult.",
        schedule: advanceWeightSchedule,
        equipments: equipments,
        suggestedDietPlans: suggestedDietPlans
      )),
];
