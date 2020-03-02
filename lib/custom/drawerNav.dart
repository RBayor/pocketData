import 'package:flutter/material.dart';

Drawer drawerNav(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.black26,
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Text(
                    'John Doe',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              )
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
            Icons.person_outline,
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
            Icons.book,
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
            Icons.edit,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/log');
          },
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
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/hospital');
          },
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
