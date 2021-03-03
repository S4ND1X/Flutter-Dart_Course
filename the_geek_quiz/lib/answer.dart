import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerVerificationHandler;
  final String answerText;
  Answer({this.answerVerificationHandler, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.purple[400],
        child: Text(this.answerText),
        onPressed: answerVerificationHandler,
      ),
    );
  }
}
