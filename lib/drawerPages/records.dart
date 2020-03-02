import 'package:flutter/material.dart';
import 'package:pockethealth/custom/customAppBar.dart';
import 'package:pockethealth/custom/drawerNav.dart';

class Records extends StatefulWidget {
  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Records"),
      drawer: drawerNav(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            leading: Icon(Icons.book),
            title: Text("Problem"),
            subtitle: Text("Short Description"),
          );
        },
      ),
    );
  }
}
