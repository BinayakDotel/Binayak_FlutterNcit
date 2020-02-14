//import 'package:flutter/material.dart';
//import 'InterfaceButton.dart';
//import 'TextArea.dart';
//
//class Answer extends StatefulWidget {
//  final count;
//  final List questions;
//  final Function clickResponse;
//
//  Answer(this.questions, this.clickResponse, this.count);
//
//  @override
//  State<StatefulWidget> createState() {
//    return AnswerState();
//  }
//}
//
//class AnswerState extends State<Answer> {
//
//  AnswerState();
//
//  @override
//  Widget build(BuildContext context) {
//    return
//      ListView.separated(
//        padding: const EdgeInsets.all(0),
//      itemCount: widget.stateQuestion.length,
//      itemBuilder: (BuildContext context, int index) {
//        return Container(
//            height: 60,
//          child: RaisedButton(
//            color: Colors.blue[200],
//            child: TextArea(this.stateQuestion[index]['question']),
//            elevation: 10,
//            onPressed: () => clickResponse(this.stateQuestion[index]['answer']['score']),
//          ),
//        );
//      },
//        separatorBuilder:
//            (BuildContext context, int index) => const Divider()
//    );
//  }
//}
