import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
//void main() {
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

final _questions = const [
  {
    'questionText': 'Whats your favorite color',
    'answers': [
      {'text': 'blue', 'score': 5},
      {'text': 'black', 'score': 10},
      {'text': 'red', 'score': 3},
      {'text': 'white', 'score': 1}
    ],
  },
  {
    'questionText': 'whats your favorite animal',
    'answers': [
      {'text': 'cat', 'score': 5},
      {'text': 'lion', 'score': 10},
      {'text': 'tiger', 'score': 3},
      {'text': 'dog', 'score': 1}
    ],
  },
  {
    'questionText': 'Whats your favorite instructor',
    'answers': [
      {'text': 'max', 'score': 5},
      {'text': 'jack', 'score': 10},
      {'text': 'joe', 'score': 3},
      {'text': 'bob', 'score': 1}
    ],
  },
];

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerChosen(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have a question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerChosen: _answerChosen,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
