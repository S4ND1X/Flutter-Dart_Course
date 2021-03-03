import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int quizScore;
  final int quizLenght;
  final Function resetHandler;

  Result({this.quizScore, this.quizLenght, this.resetHandler});

  String get resultPhrase {
    String _result;
    int difference = quizScore - quizLenght;
    if (difference.abs() == 0) {
      _result = "You shall Pass to the Undying Lands!\n$quizScore/$quizLenght";
    } else if (difference.abs() < 2) {
      _result = "Your are an ancient one! \n$quizScore/$quizLenght";
    } else if (difference.abs() < 4) {
      _result = "You are a men! \n$quizScore/$quizLenght";
    } else {
      _result = "Your words are poison! \n$quizScore/$quizLenght";
    }
    return _result;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              FloatingActionButton.extended(
                onPressed: resetHandler,
                label: Text("Restart quiz!"),
                icon: Icon(Icons.repeat_rounded),
                backgroundColor: Colors.purple[300],
              )
            ]),
      ),
    );
  }
}
