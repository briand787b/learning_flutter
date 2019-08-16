import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final String _question;
  final List<Tuple2<String, int>> _answers;
  final Function _onAnswered;

  Quiz(this._question, this._answers, this._onAnswered);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(this._question),
        ...this._answers.map((a) {
          return Answer(a.item1, a.item2, this._onAnswered);
        }),
      ],
    );
  }
}
