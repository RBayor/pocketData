import 'package:flutter/material.dart';

Drawer drawerNav(BuildContext context) {
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
          leading: Icon(
            Icons.data_usage,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
          title: Text(
            'Bio Data',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        ListTile(
          // selected: _drawerSelection == DrawerSelection.medical_records,
          leading: Icon(
            Icons.pie_chart_outlined,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/records');
          },
          title: Text(
            'Medical Record',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        ListTile(
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
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/ice');
          },
          title: Text(
            'ICE',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    ),
  );
}
