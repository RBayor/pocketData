import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    title: Text("$title"),
    actions: <Widget>[
      IconButton(
        onPressed: () {
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
