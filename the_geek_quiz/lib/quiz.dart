import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final Function answerHandler;
  final int questionIndex;

  Quiz(
      {@required this.answerHandler,
      @required this.questionsList,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: this.questionsList[this.questionIndex]
                ["questionText"]),
        //? ... saca los elementos de una lista hacia "afuera", y se hace el casteo de las respuestas a una lista para despues poder convertir la respuesta del map a lista
        ...(this.questionsList[this.questionIndex]["answers"]
                as List<Map<String, Object>>)
            .map((answer) => Answer(
                answerVerificationHandler: () =>
                    this.answerHandler(answer["score"]),
                answerText: answer["text"]))
            .toList()
      ],
    );
  }
}
