import 'package:flutter/material.dart';

class InterfaceButton extends StatelessWidget{

  final Function clickResponse;

  InterfaceButton(this.clickResponse);

  @override
  Widget build(BuildContext context){
    return(
        FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: this.clickResponse,
        )
    );
  }
}