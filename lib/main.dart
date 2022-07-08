import 'package:flutter/material.dart';
import 'package:flutter_starter_guide/result.dart';

import './quiz.dart';

// void main(List<String> args) {
//   runApp(MainApp());
// }

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'text': 'What\'s you favorite color?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 55}
      ]
    },
    {
      'text': 'What\'s you favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 15},
        {'text': 'Cat', 'score': 25},
        {'text': 'Dog', 'score': 34}
      ]
    },
  ];

  void _answerChoosen(int score) {
    setState(() {
      _questionIndex += 1;
    });
    _totalScore += score;
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
          title: Text('App bar text'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions[_questionIndex], _answerChoosen)
            : Result(
                resultScore: _totalScore,
                onReset: _resetQuiz,
              ),
      ),
    );
  }
}
