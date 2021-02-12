import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey scaffoldKey = GlobalKey();

  String _name;
  String _email;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sygalin Save',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Save data"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 25, left: 8, right: 8),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'name',
                      hintText: 'enter name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please enter some text";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      _name = value;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'email',
                      hintText: 'enter email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please enter some text";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      _email = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    print("hello");
                    if (_formKey.currentState.validate()) {
                      print(_email);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Enregister",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
