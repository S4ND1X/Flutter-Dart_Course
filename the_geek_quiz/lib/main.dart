//? Every material design widget
import 'package:flutter/material.dart';

import './quiz.dart';
import "./result.dart";

void main(List<String> args) {
  //?Esta funcion recibe la clase del widget a correr
  runApp(TheGeekQuizApp());
}

//? StatelessWidget includes a base class to create or own componnets based onf material.dart
class TheGeekQuizApp extends StatefulWidget {
  //?Metodo para crear el estado basado en la clase del estado
  @override
  State<StatefulWidget> createState() {
    return _TheGeekQuizAppState();
  }
}

//?Clase dedicada a guardar el estado del widget y linkeado mediante el generico
class _TheGeekQuizAppState extends State<TheGeekQuizApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  //LOTR Questions
  final List<Map<String, Object>> _questions = const [
    {
      "questionText":
          "We all know that Boromir dies saving two of our favorite hobbits. But which book does he die in?",
      "answers": [
        {"text": "The Fellowship of The Ring", "score": 1},
        {"text": "The Two Towers", "score": 0},
        {"text": "Return of The King", "score": 0}
      ]
    },
    {
      "questionText": "Which of these is another name for dwarves?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText":
          "Which character said “Nine companions. So be it. You shall be the fellowship of the ring.”",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText": "What is the name of Galadriel's husband?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText": "After Sauron, who held the One Ring?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText": "Where is Legolas from?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText":
          "In The Fellowship of the Ring, Frodo was stabbed on Weathertop. What type of blade was he stabbed with?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the name of the Inn where Aragorn meets the Hobbits?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText": "What was Gollum's name before he was Gollum?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText": "How many Rings of Power were there?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText": "What is the name of Gandalf's horse?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    },
    {
      "questionText":
          "During the siege of Minas-Tirith, the forces of Sauron use a battering ram. What do they call it?",
      "answers": [
        {"text": "1", "score": 1},
        {"text": "2", "score": 0},
        {"text": "3", "score": 0}
      ]
    }
  ];

  void _nextQuestion(int answerScore) {
    //? Se cambia el estado a traves de la funcion para evitar problemas de rendimiento
    _totalScore += answerScore;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Geek Quiz"),
          backgroundColor: Color.fromRGBO(255, 192, 203, 1),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionsList: _questions,
                answerHandler: _nextQuestion,
                questionIndex: _questionIndex,
              )
            : Result(quizScore: _totalScore, quizLenght: _questions.length),
      ),
    );
  }
}
