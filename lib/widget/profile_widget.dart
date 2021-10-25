import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // to assign color to the widgets  without effecting the current theme of the app
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          // here we invoke the build image.
          buildImage(),
          // make the edit icon next to profile image
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  // build and design the user profile image
  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.grey.shade400,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          // size of the image
          width: 100,
          height: 100,
          // make the image clickable
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  // build and design the icon of edit picture action in spreate widget
  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          // use the color in theme to color the Circle (orange)
          color: color,
          all: 6,
          // add the icon
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 15,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: Colors.orange.shade400,
          child: child,
        ),
      );
}
