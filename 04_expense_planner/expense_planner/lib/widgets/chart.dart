import 'package:flutter/material.dart';

import '../models/chart_record.dart';
import '../models/day.dart';

class Chart extends StatelessWidget {
  static const numDaysInWeek = 7;

  

  List<ChartRecord> get groupedTransactionValues {
    return List.generate(
      numDaysInWeek,
      (i) {
        return ChartRecord(Day.values[i], 9.99);
      },
      growable: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
