import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = <Map<String, Object>>[
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  void _answerQuestion() {
    setState(() => this._questionIndex =
        (this._questionIndex + 1) % this._questions.length);
  }

  @override
  Widget build(BuildContext context) {
    if (this._questions.length < 4) {
      this._questions.add(
        <String, Object>{
          "questionText": "who killed jeff epstein",
          'answers': [
            'british monarchy',
            'trump',
            'isreal snuck him out of prison',
            'clintons',
          ],
        },
      );
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(this._questions[this._questionIndex]['questionText']),
            ...(this._questions[this._questionIndex]['answers'] as List<String>)
                .map((answerText) {
              return Answer(answerText, this._answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
