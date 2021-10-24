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

    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageURLCookbook,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                color: Colors.black45,
                child: Text(cookbookName,
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
// build ClipRRect
    // return InkWell(
    //     onTap: () {},
    //     child: Card(
    //         shape:
    //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    //         elevation: 10,
    //         margin: EdgeInsets.all(10),
    //         child: Column(children: [
    //           Stack(
    //             children: [
    //               ClipRRect(
    //                 borderRadius: BorderRadius.only(
    //                     topLeft: Radius.circular(15),
    //                     topRight: Radius.circular(15)),
    //                 child: Image.network(
    //                   image,
    //                   height: 200,
    //                   width: double.infinity,
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //               Positioned(
    //                 bottom: 10,
    //                 child: Container(
    //                     color: Colors.black54,
    //                     child: Text(
    //                       cookbookName,
    //                       style: TextStyle(fontSize: 10, color: Colors.white),
    //                     )),
    //               )
    //             ],
    //           ),
    //         ])));

// build ink picture
    // return ClipOval(
    //   child: Material(
    //     color: Colors.grey.shade400,
    //     child: Ink.image(
    //       image: image,
    //       fit: BoxFit.cover,
    //       width: 100,
    //       height: 100,
    //       child: InkWell(onTap: onClicked),
    //     ),
    //   ),
    // );

    // return InkWell(
    //   onTap: () {},
    //   child: Container(
    //     child: Container(
    //       child: Text(cookbookName,
    //           style: TextStyle(fontSize: 15, color: Colors.white)),
    //     ),
    //     height: 30.0,
    //     width: MediaQuery.of(context).size.width - 100.0,
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(5),
    //         color: Colors.black54,
    //         image: DecorationImage(
    //             image: new AssetImage(imageURLCookbook), fit: BoxFit.fill)),
    //   ),
    // );
  }
}
