import 'package:flexit_gym/cards/blueButton.dart';
import 'package:flexit_gym/cards/quickActionCard.dart';
import 'package:flexit_gym/screens/dietPage.dart';
import 'package:flexit_gym/screens/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class homePage extends StatefulWidget {
  static const routeName = '/homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Color(0xff23A6F0),
        ),
        title: Text(
          'Flexit',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async{
                await FirebaseAuth.instance.signOut();
                Navigator.pushNamedAndRemoveUntil(context, loginScreen.routeName, (route) => false);
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: _getDrawerItemWidget(_currentIndex, width),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff23A6F0),
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Plans',
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            label: 'Diet',
            icon: Icon(Icons.fastfood_rounded),
          ),
        ],
      ),
    );
  }

  _getDrawerItemWidget(int pos, double width) {
    switch (pos) {
      case 0:
        return Container(
          margin: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 13),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.bolt,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Quick Actions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: QuickActionCard(
                  title: 'Current Calorie Goal',
                  desc: 'You need 55.34 Kcal today',
                  img: 'assets/images/quick_action_01.png',
                  cal: 0.33,
                ),
              ),
              QuickActionCard(
                  title: 'Today’s Workout Plan',
                  cal: 0.75,
                  desc: '11/15 Excercises Completed!',
                  img: 'assets/images/quick_action_02.png'),
              InkWell(
                onTap: () {},
                child: BlueButton(
                  text: 'Find your ideal regime',
                  width: width,
                  height: 55,
                ),
              )
            ],
          ),
        );
      case 1:
        return Container();
      case 2:
        return DietPage();
      default:
        return Text("Error");
    }
  }
}