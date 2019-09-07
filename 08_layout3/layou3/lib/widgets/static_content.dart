import 'package:flutter/material.dart';
import 'package:layou3/widgets/body.dart';
import 'package:layou3/widgets/header.dart';

class StaticContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Header(),
          Body(),
        ],
      ),
    );
  }
}
