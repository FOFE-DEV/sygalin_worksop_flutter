import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AUTHENTIFICATION'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60),
          height: 100,
          child: Center(
            child: Image.network('http://me.fofe.cm/images/U/sygalin.png'),
          ),
        ),
      ),
    );
  }
}
