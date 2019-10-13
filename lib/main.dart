import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionCounter = 0;

  List _questionList = [
    "This is question 1",
    "This is question 2",
    "This is question 3",
    "This is question 4"
  ];

  void answerQuestion() {
    setState(() {
      if (_questionCounter < _questionList.length - 1) {
        _questionCounter++;
        print("COUNTER INCREASED ${_questionCounter}");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: Column(
          children: [
            Question(_questionList[_questionCounter]),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
