import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 18, right: 18),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'téléphone',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 18, right: 18),
            child: FlatButton(
              textColor: Colors.white,
              height: 60.0,
              color: Colors.black,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'connexion',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [IconButton(icon: Icon(Icons.help), onPressed: () {})],
            ),
          ),
        ],
      ),
    );
  }
}
