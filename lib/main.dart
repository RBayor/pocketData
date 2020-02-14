import 'package:flutter/material.dart';
import 'package:pockethealth/drawerPages/ice.dart';
import 'package:pockethealth/drawerPages/records.dart';
import 'package:pockethealth/home.dart';
import 'package:pockethealth/login.dart';

void main() => runApp(
      MaterialApp(
        title: "Health Record",
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/home': (context) => Home(),
          '/records': (context) => Records(),
          '/ice': (context) => ICE()
        },
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
      ),
    );
