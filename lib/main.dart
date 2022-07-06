import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MainApp());
// }

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  void answerChoosen() {
    print('Answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s you favorite color?',
      'What\'s you favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App bar text'),
        ),
        body: Column(children: <Widget>[
          Text(questions[0]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: answerChoosen,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: answerChoosen,
          ),
        ]),
      ),
    );
  }
}
