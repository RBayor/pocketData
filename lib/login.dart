import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: formKey,
        child: _body(),
      ),
    );
  }

  validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  notify(msg) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('User'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(msg.toString()),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _body() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _appName(),
            _catchPhrase(),
            Container(
              height: 40,
            ),
            _emailField(),
            _passField(),
            _loginBtn()
          ],
        ),
      ),
    );
  }

  _loginBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
        color: Colors.white,
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed("/home");
        },
      ),
    );
  }

  _passField() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(
            Icons.lock,
            color: Colors.black54,
          ),
          labelStyle: TextStyle(
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
        validator: (value) =>
            value.isEmpty ? "Please input a valid password" : null,
        onSaved: (value) {
          _password = value;
        },
      ),
    );
  }

  _emailField() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(
            Icons.email,
            color: Colors.black54,
          ),
          labelStyle: TextStyle(
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
        validator: (value) =>
            value.isEmpty ? "please input a valid email" : null,
        onSaved: (value) {
          _email = value;
        },
      ),
    );
  }

  _appName() {
    return Text(
      "Health Record",
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _catchPhrase() {
    return Center(
      child: Text(
        "Secure. Reliable. Timely",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}