import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  String _sentence;
  bool _changed;

  @override
  void initState() {
    _sentence = 'Salut les codeurs';
    _changed = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                _sentence,
                style: TextStyle(
                  color: _changed ? Colors.purple : Colors.green,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              color: _changed ? Colors.white : Colors.black,
              onPressed: () {
                setState(() {
                  _changed ? _changed = false : _changed = true;
                  _sentence == 'Salut les codeurs'
                      ? _sentence = 'Bye les codeurs'
                      : _sentence = 'Salut les codeurs';
                });
              },
              child: Text(
                'Changer',
                style: TextStyle(
                  color: _changed ? Colors.black : Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
