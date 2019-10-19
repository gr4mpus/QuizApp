import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function answerSelector;
  final String answerText;
  Answer(this.answerSelector,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(   
              color: Colors.blue[200],   
              child: Text(answerText),
              textColor: Colors.black54,
              onPressed: answerSelector,
            ),
    );
  }
}