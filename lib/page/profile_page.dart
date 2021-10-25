import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_example/model/user.dart';
import 'package:user_profile_example/utils/user_preferences.dart';
import 'package:user_profile_example/widget/numbers_widget.dart';
import 'package:user_profile_example/widget/profile_widget.dart';
import 'my_mealPlans.dart';
import 'my_recipes.dart';
import 'bookmarked_recipes.dart';
// import 'package:user_profile_example/widget/button_widget.dart'; // if we will add button of follow

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final cookingEnthusist = UserPreferences.myCooking_Enthusiast;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ProfileWidget(
                    imagePath: cookingEnthusist.imagePath,
                    onClicked: () async {},
                  ),
                  buildName(cookingEnthusist),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: NumbersWidget(),
              ),
              SizedBox(height: 15.0),
              DefaultTabController(
                length: 3, // length of tabs
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Building the tab bar
                    TabBar(
                      labelColor: Colors.orangeAccent.shade400,
                      indicatorColor: Colors.orangeAccent.shade400,
                      tabs: [
                        Tab(icon: Icon(Icons.table_view), text: ("My recipe")),
                        Tab(
                            icon: Icon(Icons.assignment_rounded),
                            text: ("My meal plans")),
                        Tab(icon: Icon(Icons.bookmark), text: ("Bookmarked")),
                      ],
                    ),
                    Container(
                      height: 300, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 0.5))),
                      // assign my recipes pages ,my_meal_plans
                      child: TabBarView(
                        children: <Widget>[
                          my_recipes(),
                          my_meal_plans(),
                          bookmarked_recipes(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName(cooking_Enthusiast user) => Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              user.name,
              style: TextStyle(fontSize: 17, fontFamily: 'Open Sans'),
            ),
          ],
        ),
      );
}
