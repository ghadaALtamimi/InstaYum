import 'package:flutter/material.dart';
import 'package:user_profile_example/data.dart';

import 'package:user_profile_example/widget/cookbook_item.dart';

class bookmarked_recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: Cookbook_Data.map((c) => cookbook_item(
            key,
            c.id,
            c.cookbookName,
            c.imageURLCookbook,
          )).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }

// button
  // return GridView(
  //   padding: EdgeInsets.all(25),
  //   children: [
  //     ElevatedButton(
  //       onPressed: () {},
  //       child: Text('Default CookBook'),
  //       style: ElevatedButton.styleFrom(
  //         shape: CircleBorder(),
  //         padding: EdgeInsets.all(24),
  //       ),
  //     )
  //   ],
  //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
  //     maxCrossAxisExtent: 200,
  //     childAspectRatio: 3 / 2,
  //     crossAxisSpacing: 20,
  //     mainAxisSpacing: 20,
  //   ),
  // );

}
