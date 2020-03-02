import 'package:flutter/material.dart';
import 'package:pockethealth/custom/customAppBar.dart';
import 'package:pockethealth/custom/drawerNav.dart';

class ICE extends StatefulWidget {
  @override
  _ICEState createState() => _ICEState();
}

class _ICEState extends State<ICE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "ICE"),
      drawer: drawerNav(context),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  title: Text("Contact Name"),
                  subtitle: Text("Relation\nNumber"),
                ),
              ));
        },
      ),
    );
  }
}
