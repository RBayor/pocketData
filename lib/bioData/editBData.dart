import 'package:flutter/material.dart';

class EditBData extends StatelessWidget {
   var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Edit"),
      ),
      body: Card(
        elevation: 5,
        child: Form(
          key: formKey,
          child: _body(),
        ) ,
      ),
    );
  }

  _body(){
    return ListView(
      children: <Widget>[
        _height(),
        _weight(),
        _age(),
        _city(),
        _email(),
        _mobile(),
        _home(),
        _updateBtn()
      ],
    );
  }

  _updateBtn(){
    return RaisedButton(
      color: Colors.blue,
      child: Text("Update"),
      onPressed: (){},
    );
  }

   _height() {
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
           labelText: 'Height',
           icon: Icon(
             Icons.tap_and_play,
             color: Colors.black54,
           ),
           labelStyle: TextStyle(
             color: Colors.black54,
             fontSize: 18,
           ),
         ),
         validator: (value) =>
         value.isEmpty ? "Please input a valid email" : null,
         onSaved: (value) {
          // _email = value;
         },
       ),
     );
   }
   _weight() {
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
           labelText: 'Weight',
           icon: Icon(
             Icons.linear_scale,
             color: Colors.black54,
           ),
           labelStyle: TextStyle(
             color: Colors.black54,
             fontSize: 18,
           ),
         ),
         validator: (value) =>
         value.isEmpty ? "Please input a valid email" : null,
         onSaved: (value) {
           // _email = value;
         },
       ),
     );
   }
   _age() {
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
           labelText: 'Age',
           icon: Icon(
             Icons.child_care,
             color: Colors.black54,
           ),
           labelStyle: TextStyle(
             color: Colors.black54,
             fontSize: 18,
           ),
         ),
         validator: (value) =>
         value.isEmpty ? "Please input a valid email" : null,
         onSaved: (value) {
           // _email = value;
         },
       ),
     );
   }

   _mobile() {
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
           labelText: 'Mobile',
           icon: Icon(
             Icons.phone_android,
             color: Colors.black54,
           ),
           labelStyle: TextStyle(
             color: Colors.black54,
             fontSize: 18,
           ),
         ),
         validator: (value) =>
         value.isEmpty ? "Please input a valid email" : null,
         onSaved: (value) {
           // _email = value;
         },
       ),
     );
   }
   _email() {
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
         value.isEmpty ? "Please input a valid email" : null,
         onSaved: (value) {
           // _email = value;
         },
       ),
     );
   }
   _city() {
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
           labelText: 'City',
           icon: Icon(
             Icons.location_city,
             color: Colors.black54,
           ),
           labelStyle: TextStyle(
             color: Colors.black54,
             fontSize: 18,
           ),
         ),
         validator: (value) =>
         value.isEmpty ? "Please input a valid email" : null,
         onSaved: (value) {
           // _email = value;
         },
       ),
     );
   }
   _home() {
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
           labelText: 'Home Address',
           icon: Icon(
             Icons.home,
             color: Colors.black54,
           ),
           labelStyle: TextStyle(
             color: Colors.black54,
             fontSize: 18,
           ),
         ),
         validator: (value) =>
         value.isEmpty ? "Please input a valid email" : null,
         onSaved: (value) {
           // _email = value;
         },
       ),
     );
   }
}
