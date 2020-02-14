import 'package:flutter/material.dart';
import 'package:pockethealth/custom/drawerNav.dart';

class Records extends StatefulWidget {
  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Medical Record"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          )
        ],
      ),
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
