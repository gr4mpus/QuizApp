import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerSelector;
  Answer(this.answerSelector);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(   
              color: Colors.blue[200],   
              child: Text('Button1'),
              onPressed: answerSelector,
            ),
    );
  }
}