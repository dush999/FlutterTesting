import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  final String appBarTitle;

  AppBarWidget({Key? key, required this.appBarTitle})
      : super(
          key: key,
          title: Center(child: Text(appBarTitle)),
        );
}
