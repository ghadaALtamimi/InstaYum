import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_example/model/user.dart';
import 'package:user_profile_example/utils/user_preferences.dart';
import 'package:user_profile_example/widget/appbar_widget.dart';
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
      appBar: buildAppBar(context),

      body: Container(
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
            Container(
              child: DefaultTabController(
                length: 3, // length of tabs
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Colors.orangeAccent.shade400,
                        indicatorColor: Colors.orangeAccent.shade400,
                        tabs: [
                          Tab(
                              icon: Icon(Icons.table_view),
                              text: ("My recipe")),
                          Tab(
                              icon: Icon(Icons.assignment_rounded),
                              text: ("My meal plans")),
                          Tab(icon: Icon(Icons.bookmark), text: ("Bookmarked")),
                        ],
                      ),
                    ),
                    Container(
                      height: 300, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 0.5))),
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
            ),
          ],
        ),
      ),
      // body: ListView(
      //   physics: BouncingScrollPhysics(),
      //   children: [
      //     ProfileWidget(
      //       imagePath: user.imagePath,
      //       onClicked: () async {},
      //     ),
      //     const SizedBox(height: 24),
      //     buildName(user),
      //     const SizedBox(height: 24),
      //     Center(child: buildUpgradeButton()),
      //     const SizedBox(height: 24),
      //     NumbersWidget(),
      //     const SizedBox(height: 48),
      //     buildAbout(user),
      //   ],
      // ),
    );
  }

  Widget buildName(cooking_Enthusiast user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontSize: 15),
          ),
        ],
      );

  // Widget buildFollowing() => ButtonWidget(
  //       text: 'Follow',
  //       onClicked: () {},
  //     );

}
