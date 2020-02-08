import 'package:flutter/material.dart';
import './TextArea.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var count = 0;
  var texts = ['Binayak', 'Dotel', 'Varun', 'Elon'];
  void buttonPressed() {
    if (count < 3) {
      setState(() {
        count = count + 1;
      });
      print(count);
    } else {
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
              FloatingActionButton(
                  child: Icon(
                    Icons.access_alarm,
                    color: Colors.white,

              FloatingActionButton(
                child: Icon(
                  Icons.access_alarm,
                  color: Colors.white,
                ),
                onPressed: buttonPressed,
              ),
              FloatingActionButton(
                child: Text('Press 2'),
                onPressed: buttonPressed,
              ),
              FloatingActionButton(
                child: Text('Press 3'),
                onPressed: buttonPressed,
              )
              ],
          )),
    );
  }
}
