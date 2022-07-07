import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  final questions = const [
    {
      'text': 'What\'s you favorite color?',
      'answers': ['Red', 'Black', 'Green']
    },
    {
      'text': 'What\'s you favorite animal?',
      'answers': ['Rabbit', 'Cat', 'Dog']
    },
  ];

  void _answerChoosen() {
    setState(() {
      _questionIndex += 1;
    });
    print('Answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App bar text'),
        ),
        body: _questionIndex < questions.length
            ? Column(children: <Widget>[
                Question(questions[_questionIndex]['text'] as String),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((e) => Answer(_answerChoosen, e))
              ])
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
