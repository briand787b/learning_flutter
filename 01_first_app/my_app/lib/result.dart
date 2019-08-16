import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _resetFn;

  Result(this._resultScore, this._resetFn);

  String get resultPhrase {
    if (this._resultScore < 10) {
      return 'You really suck...';
    } else if (this._resultScore < 11) {
      return 'At least you got one right';
    } else if (this._resultScore < 21) {
      return 'You\'re close!';
    } else {
      return 'Congratulations, you did it!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            'You scored ${this._resultScore}... ${this.resultPhrase}',
            // '${this.resultPhrase}',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text('Reset Quiz'),
          textColor: Colors.blue,
          onPressed: this._resetFn,
        ),
      ],
    );
  }
}
