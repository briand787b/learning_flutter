import 'package:flutter/material.dart';

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

  var _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal',
  ];

  Function() _answerQuestion(int answerIndex) {
    return () {
      print('Answer $answerIndex chosen');
      setState(() =>
          this._questionIndex = (this._questionIndex + 1) % this._questions.length);
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(_questions[this._questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: this._answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: this._answerQuestion(2),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: this._answerQuestion(3),
            ),
            RaisedButton(
              child: Text('Reset'),
              onPressed: () => setState(() => this._questionIndex = 0),
            ),
            RaisedButton(
              child: Text('See if i can reset question without setState()'),
              onPressed: () {
                // this._questions.insert(2, 'new question, bitch!'); - doesnt work
                this._questions[this._questionIndex] = 'new question, bitch';
                print('length of _questions ${this._questions.length}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
