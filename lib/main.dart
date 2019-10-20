import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionCounter = 0;
  var _totalScore = 0;

  // List _questionList = [
  //   "This is question 1",
  //   "This is question 2",
  //   "This is question 3",
  //   "This is question 4"
  // ];

  final _questions = [
    {
      'questionText': 'What\'s you favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 9}
      ]
    },
    {
      'questionText': 'Question 2',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 2},
        {'text': 'White', 'score': 9}
      ]
    },
    {
      'questionText': 'Question3',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 9}
      ]
    },
    {
      'questionText': 'Question4',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 2},
      ]
    }
  ];

  void answerQuestion(int score) {
    setState(() {
      _questionCounter++;
      _totalScore += score;
      print("COUNTER INCREASED ${_questionCounter}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: _questionCounter < _questions.length
            ? Quiz(
                questions: _questions,
                questionCounter: _questionCounter,
                answerQuestion: answerQuestion)
            : Result(_totalScore),
      ),
    );
  }
}
