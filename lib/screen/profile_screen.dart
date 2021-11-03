import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instayum1/model/user.dart';
import 'package:instayum1/utils/user_preferences.dart';
import 'package:instayum1/widget/followers_numbers.dart';
import 'package:instayum1/widget/profile_widget.dart';
import 'my_mealplans_screen.dart';
import 'my_recipes_screen.dart';
import 'bookmarks_recipes_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:user_profile_example/widget/button_widget.dart'; // if we will add button of follow

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //---------------- Database -------------------------
  //   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   String userUsername = "";
//   String imageURL = "";

// //getData() to get the data of users like username, image_url from database
//   void getData() async {
//     User user = _firebaseAuth.currentUser;
//     FirebaseFirestore.instance
//         .collection("users")
//         .doc(user.uid)
//         .snapshots()
//         .listen((userData) {
//       setState(() {
//         userUsername = userData.data()['username'];
//         imageURL = userData.data()['image_url'];
//       });
//     });
//   }

//   void initState() {
//     super.initState();
//     getData(); //we call the method here to get the data immediately when init the page.
//   }
//----------------------------------------------------------

  // Children with random heights - You can build your widgets of unknown heights here
  // I'm just passing the context in case if any widgets built here needs  access to context based data like Theme or MediaQuery

  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,

        // allows you to build a list of elements that would be scrolled away till the body reached the top

        // You tab view goes here
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/defaultUser.png', fit: BoxFit.cover,
                          // size of the image
                          width: 70,
                          height: 70,
                        ),
                        // make the image clickabl
                      ),
                      Text('Nora'),
                    ],
                  ),
                  Center(
                    child: FollowersNumbers(),
                  ),
                ],
              ),
            ),
            TabBar(
              labelColor: Color(0xFFeb6d44),
              indicatorColor: Color(0xFFeb6d44),
              tabs: [
                Tab(icon: Icon(Icons.table_view), text: ("My recipe")),
                Tab(
                    icon: Icon(Icons.assignment_rounded),
                    text: ("My meal plans")),
                Tab(icon: Icon(Icons.bookmark), text: ("Bookmarks")),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //this array for tabs contint
                  my_recipes(),
                  // ------------ list item 2 tab view bookmarks screen
                  my_meal_plans(),
                  // ------------ list item 3 tab view bookmarks screen
                  bookmarked_recipes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
