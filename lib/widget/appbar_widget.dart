import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    backgroundColor: Colors.orange.shade400,
    elevation: 0,
    title: Text('My profile',
        style: TextStyle(
            fontFamily: 'Open Sans',
            color: Colors.white,
            fontWeight: FontWeight.bold)),
  );
}
