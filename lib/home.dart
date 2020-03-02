import 'package:flutter/material.dart';
import 'package:pockethealth/custom/customAppBar.dart';
import 'package:pockethealth/custom/drawerNav.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

enum DrawerSelection { bio_data, medical_records, log_data }

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Bio Data"),
      drawer: drawerNav(context),
      body: _body(),
    );
  }

  _body() {
    return Column(
      children: <Widget>[
        _bData(),
        _cData(),
      ],
    );
  }

  _bData() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.2,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Height",
                  ),
                  Text("Weight"),
                  Text("Age"),
                  Text("BMI")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("176cm"),
                  Text("59kg"),
                  Text("21"),
                  Text("19.0")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _cData() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.4,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Mobile number"),
                  Text("Email"),
                  Text("City"),
                  Text("Address")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("0240000000"),
                  Text("johndoe@gmail.com"),
                  Text("Kumasi"),
                  Text("Room 3A Brunei")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
