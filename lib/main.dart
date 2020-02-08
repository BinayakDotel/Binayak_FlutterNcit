import 'package:flutter/material.dart';
import './TextArea.dart';
import './InterfaceButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var count = 0;
  var texts = ['Binayak','Dotel','Hero','Elon','Musk'];
  void buttonPressed() {
    if (count < 4  ) {
      setState(() {
        count = count + 1;
      });
    }else{
      setState(() {
        count = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter Title')),
          body: Column(
            children: <Widget>[
              TextArea(
                texts[count],
              ),
              InterfaceButton(
                buttonPressed
              )
              ],
            )
          ),
    );
  }
}
