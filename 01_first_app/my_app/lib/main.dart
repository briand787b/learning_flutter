import 'package:flutter/material.dart';
import 'package:my_app/result.dart';
import 'package:tuple/tuple.dart';

import './quiz.dart';
import './result.dart';

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
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questions = <Map<String, Object>>[
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'Black': 10},
        {'Red': 0},
        {'Green': 0},
        {'White': 0},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'Rabbit': 10},
        {'Snake': 0},
        {'Elephant': 0},
        {'Lion': 0},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'Max': 10},
        {'Max': 0},
        {'Max': 0},
        {'Max': 0},
      ],
    },
  ];

  Function _answerQuestion(int score) {
    return () {
      this._totalScore += score;

      if (this._questionIndex < (this._questions.length - 1)) {
        setState(() {
          print('question length: ${this._questions.length}');
          print('question index: ${this._questionIndex}');
          this._questionIndex++;
        });
      }
    };
  }

  void _resetQuiz() {
    setState(() {
      this._totalScore = 0;
      this._questionIndex = 0;
    });
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
        body: this._questionIndex < (this._questions.length - 1)
            ? Quiz(
                this._questions[this._questionIndex]['questionText'],
                (this._questions[this._questionIndex]['answers']
                        as List<Map<String, int>>)
                    .map((Map<String, int> a) =>
                        Tuple2<String, int>((a).keys.first, (a).values.first))
                    .toList(),
                this._answerQuestion,
              )
            : Result(this._totalScore, this._resetQuiz),
      ),
    );
  }
}
