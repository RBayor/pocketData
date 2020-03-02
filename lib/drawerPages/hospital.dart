import 'package:flutter/material.dart';
import 'package:pockethealth/custom/customAppBar.dart';
import 'package:pockethealth/custom/drawerNav.dart';

class Hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "My Hospital"),
      drawer: drawerNav(context),
    );
  }
}
