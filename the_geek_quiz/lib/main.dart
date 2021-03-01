//? Every material design widget
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  //LOTR Questions
  List<String> _questions = [
    "We all know that Boromir dies saving two of our favorite hobbits. But which book does he die in?",
    "Which of these is another name for dwarves?",
    "Which character said “Nine companions. So be it. You shall be the fellowship of the ring.”",
    "What is the name of Galadriel's husband?",
    "After Sauron, who held the One Ring?",
    "Where is Legolas from?",
    "In The Fellowship of the Ring, Frodo was stabbed on Weathertop. What type of blade was he stabbed with?",
    "What is the name of the Inn where Aragorn meets the Hobbits?",
    "What was Gollum's name before he was Gollum?",
    "How many Rings of Power were there?",
    "What is the name of Gandalf's horse?",
    "During the siege of Minas-Tirith, the forces of Sauron use a battering ram. What do they call it?"
  ];

  void _nextQuestion() {
    //? Se cambia el estado a traves de la funcion para evitar problemas de rendimiento
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera app"),
          backgroundColor: Color.fromRGBO(255, 192, 203, 1),
        ),
        body: Column(
          children: [
            Question(questionText: _questions.elementAt(_questionIndex)),
            Answer(answerVerificationHandler: _nextQuestion),
            Answer(answerVerificationHandler: _nextQuestion),
            Answer(answerVerificationHandler: _nextQuestion),
          ],
        ),
      ),
    );
  }
}
