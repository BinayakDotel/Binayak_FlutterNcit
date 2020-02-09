import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  final String names;

  TextArea(this.names);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          this.names,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
