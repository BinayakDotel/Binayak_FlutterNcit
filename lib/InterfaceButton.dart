import 'package:flutter/material.dart';

class InterfaceButton extends StatelessWidget {
  final Function clickResponse;
  final String answer;

  InterfaceButton(this.clickResponse, this.answer);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            child: RaisedButton(
          color: Colors.green[300],
          child: Text(
            this.answer,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: clickResponse,
              elevation: 6,
        )),
      ],
    );
  }
}
