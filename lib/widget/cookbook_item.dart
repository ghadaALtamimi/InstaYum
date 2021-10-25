import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cookbook_item extends StatelessWidget {
  final String id;
  final String cookbookName;
  final String imageURLCookbook;
  // final VoidCallback onClicked;

  const cookbook_item(
    Key? key,
    this.id,
    this.cookbookName,
    this.imageURLCookbook,
  );

  void selectCookbook() {}
  @override
  Widget build(BuildContext context) {
    final String image = imageURLCookbook;
// this section will return one item of Grid Items that in bookmarked recipes page.
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(imageURLCookbook),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.black45,
            child: Text(cookbookName,
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
