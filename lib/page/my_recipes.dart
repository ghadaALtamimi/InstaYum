import 'package:flutter/material.dart';
import 'package:user_profile_example/widget/recipe_item.dart';

import '../data.dart';

class my_recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: GridView(
        padding: EdgeInsets.all(25),
        children: Recipes_Data.map((e) => recipe_Item(
            key,
            e.id,
            e.recipeName,
            e.category,
            e.imageURL,
            e.ingredients,
            e.steps,
            e.duration)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
