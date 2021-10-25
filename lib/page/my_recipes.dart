import 'package:flutter/material.dart';
import 'package:user_profile_example/widget/recipe_item.dart';

import '../data.dart';

class my_recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // build and return the Scaffold which is the Tap veiw of my recipes page
    return Scaffold(
        body: GridView(
      //here we show all recipes objects as Grid view
      padding: EdgeInsets.all(25),
      children: Recipes_Data.map((e) => recipe_Item(key, e.id, e.recipeName,
          e.category, e.imageURL, e.ingredients, e.steps, e.duration)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300, // make 2 items in each row
        childAspectRatio: 3 / 2, // make space between grid items
        crossAxisSpacing: 30,
        mainAxisSpacing: 20,
      ),
    ));
  }
}
