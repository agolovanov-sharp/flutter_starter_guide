import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
    );
  }
}
