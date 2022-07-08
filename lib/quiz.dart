import 'package:flutter/material.dart';
import 'package:flutter_starter_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> questionInfo;
  final Function answerChoosen;

  const Quiz(this.questionInfo, this.answerChoosen);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questionInfo['text'] as String),
      ...(questionInfo['answers'] as List<Map<String, Object>>).map(
          (e) => Answer(() => answerChoosen(e['score']), e['text'] as String))
    ]);
  }
}
