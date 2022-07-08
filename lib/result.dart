import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback onReset;

  const Result({Key? key, required this.resultScore, required this.onReset})
      : super(key: key);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else {
      resultText = 'You are likeable';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            child: Text('Reset'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: onReset,
          )
        ],
      ),
    );
  }
}
