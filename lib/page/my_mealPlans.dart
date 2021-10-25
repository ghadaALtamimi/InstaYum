import 'package:flutter/material.dart';

class my_meal_plans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // build and return the container which is the Tap veiw of meal Plans
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            // build card of the meal plan name and the button .
            Card(
              child: Container(
                height: 90,
                child: Row(
                  // build row contain the 2 Expanded items
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: ListTile(
                                  title: Text(
                                    "Keto diet plan",
                                    // add style to the text
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Row(
                                  // to make a space between row's items
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // add sizedBox to the row to make space between items
                                    SizedBox(
                                      width: 8,
                                    ),
                                    //create the "Make it my plan" button
                                    ElevatedButton(
                                      child: Text("Make it my plan"),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: Colors.white,
                                        primary: Color(0xFFeb6d44),
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
              //  Card will chang its place on the the z-coordinate .
              elevation: 8,
              // make card margin
              margin: EdgeInsets.all(10),
              // design the shape of the card
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  // make the border color of card white.
                  borderSide: BorderSide(color: Colors.white)),
              // color the card
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
