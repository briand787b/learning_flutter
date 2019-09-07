import 'package:flutter/material.dart';
import 'package:layou3/widgets/static_content.dart';

import './models/region.dart';
import './widgets/body.dart';
import './widgets/header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: Scaffold(
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final states = const [
    const Region('Alabama'),
    const Region('Arizona'),
    const Region('Connecticut'),
    const Region('Colorado'),
    const Region('Georgia'),
    const Region('New Hampshire'),
    const Region('New York'),
    const Region('Rhode Island'),
    const Region('Tennessee'),
    const Region('Nevada'),
    const Region('New Mexico'),
    const Region('Utah'),
    const Region('Wyoming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: ListView(
        children: [
          StaticContent(),
        ],
      ),
    );
  }
}
