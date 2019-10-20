import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Awesome';
    } else if (resultScore <= 12) {
      resultText = 'Excellent';
    } else if (resultScore <= 16) {
      resultText = "Freak";
    } else {
      resultText = "Sick";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text('Restart Quiz'),
              textColor: Colors.blue,
              onPressed: resetQuiz),
        ],
      ),
    );
  }
}
