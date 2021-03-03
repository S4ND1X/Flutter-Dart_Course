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
        {"text": "Luthien’s Folk", "score": 0},
        {"text": "The Old Ones", "score": 0},
        {"text": "The Deep Ones", "score": 0},
        {"text": "Durin’s Folk", "score": 1}
      ]
    },
    {
      "questionText":
          "Which character said “Nine companions. So be it. You shall be the fellowship of the ring.”",
      "answers": [
        {"text": "Elrond", "score": 1},
        {"text": "Gandalf", "score": 0},
        {"text": "Saruman", "score": 0},
        {"text": "Arwen", "score": 0}
      ]
    },
    {
      "questionText": "What is the name of Galadriel's husband?",
      "answers": [
        {"text": "Clebron", "score": 1},
        {"text": "Celebrant", "score": 0},
        {"text": "Celembribor", "score": 0},
        {"text": "Celebrian", "score": 0},
      ]
    },
    {
      "questionText": "After Sauron, who held the One Ring?",
      "answers": [
        {"text": "Gollum", "score": 0},
        {"text": "Isildur", "score": 1},
        {"text": "Frodo", "score": 0},
        {"text": "Bilbo", "score": 0},
      ]
    },
    {
      "questionText": "Where is Legolas from?",
      "answers": [
        {"text": "Rivendell", "score": 0},
        {"text": "Mirkwood", "score": 0},
        {"text": "Lothlorian", "score": 1},
        {"text": "Fangorn Forest", "score": 0}
      ]
    },
    {
      "questionText":
          "In The Fellowship of the Ring, Frodo was stabbed on Weathertop. What type of blade was he stabbed with?",
      "answers": [
        {"text": "Morgul", "score": 1},
        {"text": "Mithril", "score": 0},
        {"text": "Mithrandir", "score": 0},
        {"text": "Melkor", "score": 0},
      ]
    },
    {
      "questionText":
          "What is the name of the Inn where Aragorn meets the Hobbits?",
      "answers": [
        {"text": "The Green Dragon", "score": 0},
        {"text": "The Ivy Bush", "score": 0},
        {"text": "The Prancing Pony", "score": 1},
        {"text": "The Golden Perch", "score": 0}
      ]
    },
    {
      "questionText": "What was Gollum's name before he was Gollum?",
      "answers": [
        {"text": "Falco", "score": 0},
        {"text": "Deagol", "score": 0},
        {"text": "Smeagol", "score": 1},
        {"text": "Marcho", "score": 0}
      ]
    },
    {
      "questionText": "How many Rings of Power were there?",
      "answers": [
        {"text": "5", "score": 0},
        {"text": "9", "score": 0},
        {"text": "13", "score": 0},
        {"text": "20", "score": 1}
      ]
    },
    {
      "questionText": "What is the name of Gandalf's horse?",
      "answers": [
        {"text": "Brego", "score": 0},
        {"text": "Shadowmane", "score": 0},
        {"text": "Shadowfax", "score": 1},
        {"text": "Hasufel", "score": 1}
      ]
    },
    {
      "questionText":
          "During the siege of Minas-Tirith, the forces of Sauron use a battering ram. What do they call it?",
      "answers": [
        {"text": "Ripfang", "score": 0},
        {"text": "Griphook", "score": 0},
        {"text": "Grond", "score": 1},
        {"text": "Angmar", "score": 0}
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

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("The Geek Quiz"),
        backgroundColor: Colors.purple[700],
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questionsList: _questions,
              answerHandler: _nextQuestion,
              questionIndex: _questionIndex,
            )
          : Result(
              quizScore: _totalScore,
              quizLenght: _questions.length,
              resetHandler: _resetQuiz),
    ));
  }
}
