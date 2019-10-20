import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
final List<Map<String, Object>> questions;
final int questionCounter;
final Function answerQuestion;

Quiz({ @required this.questions,@required this.questionCounter,@required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionCounter]['questionText']),
        ...(questions[questionCounter]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
