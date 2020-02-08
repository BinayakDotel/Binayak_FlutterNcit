import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var count = 0;
  var texts = ['Binayak','Dotel','Varun','Elon'];
  void buttonPressed(){
    setState(() {
      count = count + 1;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          Scaffold(
            appBar: AppBar(title: Text('Flutter Title')),
            body: Column(
              children: <Widget>[
                Text(texts[count]),
                Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                FloatingActionButton(
                  child: Text('Press1'),
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
            )
          ),
    );
  }
}
