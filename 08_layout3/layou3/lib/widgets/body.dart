import 'package:flutter/material.dart';

class _socialElem {
  final Icon i;
  final String s;

  const _socialElem(this.i, this.s);
}

class Body extends StatelessWidget {
  final List<_socialElem> elems = [
    _socialElem(Icon(Icons.map), 'Leading News'),
    _socialElem(Icon(Icons.question_answer), 'Forums'),
  ];

  Widget buildRowElem(_socialElem s) {
    return Flexible(
      child: Container(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/tall.jpg'),
              ],
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/images/map.gif'),
                Flexible(
                  fit: FlexFit.tight,
                                  child: Container(
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Log In', style: TextStyle(fontSize: 18),),
                        Text('Sync your to-dos & ticks'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
