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

  // List _questionList = [
  //   "This is question 1",
  //   "This is question 2",
  //   "This is question 3",
  //   "This is question 4"
  // ];

  final questions = [
    {
      'questionText': 'What\'s you favourite colour?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'Question 2',
      'answers': ['Black', 'Red', 'White']
    },
    {
      'questionText': 'Question3',
      'answers': ['Black', 'Red']
    },
    {
      'questionText': 'Question4',
      'answers': ['Black', 'Red', 'Green', 'White']
    }
  ];

  void answerQuestion() {
    setState(() {
      _questionCounter++;
      print("COUNTER INCREASED ${_questionCounter}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: _questionCounter < questions.length
            ? Column(
                children: [
                  Question(questions[_questionCounter]['questionText']),
                  ...(questions[_questionCounter]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text("All Done"),
              ),
      ),
    );
  }
}
