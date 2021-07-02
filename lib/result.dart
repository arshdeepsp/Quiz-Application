import 'package:flutter/material.dart';
import 'package:quiz_arsh/reset.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFunc;
  final String reText;

  Result(this.resultScore, this.resetFunc, this.reText);

  String get resultPhrase {
    var resultText;
    if (resultScore == 0) {
      resultText = 'Try again after reading some general knowledge books -';
    } else if (resultScore > 0 && resultScore <= 10) {
      resultText = 'You tried, but you can do better -';
    } else if (resultScore > 10 && resultScore < 20) {
      resultText = 'Way better, you are reaching high levels now -';
    } else if (resultScore == 20) {
      resultText = 'That\'s the way the champions do it -';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
      child: Column(
        children: [
          Text(
            resultPhrase + ' you scored $resultScore marks out of 20',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          Reset(reText, resetFunc)
        ],
      ),
    );
  }
}
