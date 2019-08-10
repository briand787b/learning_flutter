import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal',
  ];

  Function() answerQuestion(int answerIndex) {
    return () {
      print('Answer $answerIndex chosen');
      setState(() =>
          this.questionIndex = (this.questionIndex + 1) % this.questions.length);
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
            Text(questions[this.questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: this.answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: this.answerQuestion(2),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: this.answerQuestion(3),
            ),
            RaisedButton(
              child: Text('Reset'),
              onPressed: () => setState(() => this.questionIndex = 0),
            ),
            RaisedButton(
              child: Text('See if i can reset question without setState()'),
              onPressed: () {
                // this.questions.insert(2, 'new question, bitch!'); - doesnt work
                this.questions[this.questionIndex] = 'new question, bitch';
                print('length of questions ${this.questions.length}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
