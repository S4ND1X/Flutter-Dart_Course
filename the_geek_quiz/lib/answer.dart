import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerVerificationHandler;
  Answer({this.answerVerificationHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple[400],
        child: Text("Answer 1"),
        onPressed: answerVerificationHandler,
      ),
    );
  }
}
