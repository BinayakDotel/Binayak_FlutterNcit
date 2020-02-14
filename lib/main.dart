import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterncit/FetchData.dart';
import 'package:flutterncit/Answer.dart';
import './TextArea.dart';
import './InterfaceButton.dart';
import 'FetchData.dart';
import 'AddData.dart';
import 'Result.dart';
import 'Answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var question_index = 1;
  var answer_index = 0;
  var totalScore = 0;
  var theme = Colors.green[300];
  List data = [];
//  final List texts = [
//    {
//      'question': 'What is your favorite color?',
//      'answer': [
//        {'text': 'Red', 'score': 5},
//        {'text': 'Green', 'score': 8},
//        {'text': 'Orange', 'score': 4},
//        {'text': 'Blue', 'score': 2}
//      ]
//    },
//    {
//      'question': 'Which is your favorite pet animal?',
//      'answer': [
//        {'text': 'Dog', 'score': 9},
//        {'text': 'Cat', 'score': 7},
//        {'text': 'Rabbit', 'score': 10},
//      ]
//    },
//    {
//      'question': 'Which is your favorite sport?',
//      'answer': [
//        {'text': 'Cricket', 'score': 10},
//        {'text': 'Football', 'score': 7},
//        {'text': 'BasketBall', 'score': 6},
//        {'text': 'Table Tenis', 'score': 5},
//      ]
//    },
//    {
//      'question': 'Who according to you is the best?',
//      'answer': [
//        {'text': 'Facebook', 'score': 4},
//        {'text': 'Google', 'score': 10},
//        {'text': 'Apple', 'score': 7},
//        {'text': 'Microsoft', 'score': 6},
//      ]
//    },
//  ];
  final List question = [
    'What is your favorite color?',
    'Which is your favorite pet animal?',
    'Which is your favorite sport?',
    'Who according to you is the best?',
  ];
  final List answer = [
    {'Red','Blue','Green'},
    {'Dog','Cat','Rabbit'},
    {'Cricket','Football'},
    {'Google','Facebook','Microsoft','Apple'},
  ];


  final _names = ['Apple','Ball'];

  void buttonPressed(int score) {
    setState(() {
      totalScore += score;
      question_index += 1;
    });
  }

  String get result {
    var resultText = ' ';

    if (totalScore > 8 && totalScore < 28) {
      resultText = 'You have partially good taste !!!';
    } else if (totalScore == 38) {
      resultText = 'Your Taste is Best !!!';
    } else {
      resultText = 'You donot have good taste !!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Binayak '),
            backgroundColor: Colors.teal[300],
          ),
          body: question_index < answer.length
              ? Column(
              children: <Widget>[
                //Image(image: AssetImage('images/cat.jpeg')),
            new ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 60,
                  child: RaisedButton(
                    color: Colors.teal[200],
                    child: Text(
                        'Hello'
                    ),
                    elevation: 10,
                    onPressed: (){
                      setState(() {
                        question_index+=1;
                      });
                    },
                  ),
                );
              },
              separatorBuilder:
                  (BuildContext context, int index) => const Divider()
             )
            ],
          )
              :
          Column(children: <Widget>[
                  FloatingActionButton(
                    child: Icon(
                      Icons.home,
                    ),
                    onPressed: () {
                      setState(() {
                        totalScore = 0;
                        question_index = 0;
                      });
                    },
                    elevation: 6,
                    backgroundColor: theme,
                  ),
                  FetchData(),
                  AddData(this._names),
                  Result(this.result),
                ],
            )
        ),
    );
  }
}
