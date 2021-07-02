import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionArg;

  Question(this.questionArg);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(100),
      child: Text(
        questionArg,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 23),
      ),
    );
  }
}
