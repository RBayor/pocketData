import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

enum DrawerSelection { bio_data, medical_records, log_data }

class _HomeState extends State<Home> {
  DrawerSelection _drawerSelection = DrawerSelection.bio_data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Records"),
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
      ),
      drawer: _drawerNav(),
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

  _drawerNav() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/data.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            selected: _drawerSelection == DrawerSelection.bio_data,
            leading: Icon(
              Icons.data_usage,
              color: Colors.black,
            ),
            onTap: () {},
            title: Text(
              'Bio Data',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          ListTile(
            selected: _drawerSelection == DrawerSelection.medical_records,
            leading: Icon(
              Icons.pie_chart_outlined,
              color: Colors.black,
            ),
            onTap: () {},
            title: Text(
              'Medical Record',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          ListTile(
            selected: _drawerSelection == DrawerSelection.log_data,
            leading: Icon(
              Icons.book,
              color: Colors.black,
            ),
            onTap: () {},
            title: Text(
              'Log Data',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.local_hospital,
              color: Colors.black,
            ),
            onTap: () {},
            title: Text(
              'Hospitals',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notification_important,
              color: Colors.black,
            ),
            onTap: () {},
            title: Text(
              'ICE',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
