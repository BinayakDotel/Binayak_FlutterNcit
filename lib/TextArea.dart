import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  final String names;

  TextArea(this.names);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
      this.names,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
