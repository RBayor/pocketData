import 'package:flutter/material.dart';
import 'package:pockethealth/custom/customAppBar.dart';
import 'package:pockethealth/custom/drawerNav.dart';

class Hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "My Hospital"),
      drawer: drawerNav(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            leading: Icon(Icons.book),
            title: Text("Tamale Teaching Hospital"),
          );
        },
      ),
    );
  }
}
