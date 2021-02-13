import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  const Myimage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: Image.network('https://picsum.photos/250?image=9'),
    );
  }
}
