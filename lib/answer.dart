import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onClick;
  final String text;

  const Answer(this.onClick, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: onClick,
      ),
    );
  }
}
