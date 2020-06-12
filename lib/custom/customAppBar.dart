import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pockethealth/firebase/auth.dart';

AppBar customAppBar(BuildContext context, String title) {
  BaseAuth logout = new BaseAuth();
  return AppBar(
    centerTitle: true,
    title: Text("$title"),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          logout.signOut();
          Navigator.popAndPushNamed(context, "/");
        },
        icon: Icon(
          Icons.exit_to_app,
          color: Colors.black,
        ),
      )
    ],
  );
}
