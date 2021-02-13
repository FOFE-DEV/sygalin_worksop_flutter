import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'images.dart';

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

  String _name = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sygalin Save',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Save data"),
          actions: [
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
            IconButton(icon: Icon(Icons.add_business), onPressed: () {}),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 25, left: 8, right: 8),
          child: Myimage(),
        ),
      ),
    );
  }

  _save() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _name);
    prefs.setString('email', _email);
  }

  _read() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = prefs.getString('email');
      _name = prefs.getString('name');
    });
    print('$_email');
  }
}
