import 'package:flutter/material.dart';
import 'package:quiz_arsh/question.dart';
import 'package:quiz_arsh/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsSample;
  final int questionSampleIndex;
  final Function sampleFunction;

  // ignore: invalid_required_positional_param
  Quiz(
      // ignore: invalid_required_positional_param
      @required this.questionsSample,
      // ignore: invalid_required_positional_param
      @required this.questionSampleIndex,
      // ignore: invalid_required_positional_param
      @required this.sampleFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          //? -> if
          children: [
            Question(questionsSample[questionSampleIndex]['questionText']),
            // ignore: sdk_version_ui_as_code
            ...(questionsSample[questionSampleIndex]['answerText']
                    as List<Map<String, Object>>)
                .map((answer) {
              return Answer(
                  () => sampleFunction(answer['score']), answer['text']);
            }).toList()
          ],
        ));
  }
}
