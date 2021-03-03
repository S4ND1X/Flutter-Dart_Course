import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int quizScore;
  final int quizLenght;

  Result({this.quizScore, this.quizLenght});

  String get resultPhrase {
    String _result;
    int difference = quizScore - quizLenght;
    if (difference.abs() == 0) {
      _result = "You shall Pass to the Undying Lands!";
    } else if (difference.abs() < 2) {
      _result = "Your are an ancient one!";
    } else if (difference.abs() < 4) {
      _result = "You are a men!";
    } else {
      _result = "Your words are poison!";
    }
    return _result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
