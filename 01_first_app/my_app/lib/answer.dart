import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _text;
  final int _score;
  final Function _onPressed;
  
  Answer(this._text, this._score, this._onPressed);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this._text),
        onPressed: this._onPressed(this._score),
      ),
    );
  }
}