import 'package:flutter/material.dart';
import 'package:pockethealth/custom/customAppBar.dart';
import 'package:pockethealth/custom/drawerNav.dart';

class LogData extends StatefulWidget {
  @override
  _LogDataState createState() => _LogDataState();
}

class _LogDataState extends State<LogData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Log"),
      drawer: drawerNav(context),
    );
  }
}
