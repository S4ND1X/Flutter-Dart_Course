import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //?Never changes after constructor executes
  final String questionText;
  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
