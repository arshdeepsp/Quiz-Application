import 'package:flutter/material.dart';
import 'package:quiz_arsh/quiz.dart';
import 'package:quiz_arsh/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  int totalScore = 0;

  final questions = [
    {
      'questionText':
          'Q1: What is the brightest color?', // it is ok to consider wrapping map elements insidesingle or double quotes a convention.
      'answerText': [
        {'text': 'Yellow', 'score': 0},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 0},
        {'text': 'Black', 'score': 0}
      ]
    },
    {
      'questionText': 'Q2: What is a Mammal?',
      'answerText': [
        {'text': 'Snake', 'score': 0},
        {'text': 'Dog', 'score': 5},
        {'text': 'Barracuda', 'score': 0},
        {'text': 'Eagle', 'score': 0}
      ]
    },
    {
      'questionText': 'Q3: Which of these is an German car brand?',
      'answerText': [
        {'text': 'BMW', 'score': 5},
        {'text': 'Honda', 'score': 0},
        {'text': 'Ferrari', 'score': 0},
        {'text': 'Rolls Royce', 'score': 0}
      ]
    },
    {
      'questionText': 'Q4: What is your Canada\'s capital city?',
      'answerText': [
        {'text': 'Berlin', 'score': 0},
        {'text': 'Toronto', 'score': 0},
        {'text': 'New York', 'score': 0},
        {'text': 'Quebec', 'score': 5}
      ]
    },
  ];

  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex += 1;
    });
  }

  void resetHandler() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  String resetButtonText = 'Reset?';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('A basic GK quiz!')),
            body: questionIndex < questions.length
                ? Quiz(questions, questionIndex, answerQuestion)
                : Result(totalScore, resetHandler, resetButtonText)));
  }
}
