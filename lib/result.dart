import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScrore;
  final resultHandler;
  String get resultPhrase {
    String resultText;
    if (resultScrore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScrore <= 12) {
      resultText = 'You are pretty likable';
    } else if (resultScrore <= 16) {
      resultText = 'You are ... strange!?';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  Result(this.resultScrore, this.resultHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            onPressed: resultHandler,
          )
        ],
      ),
    );
  }
}
