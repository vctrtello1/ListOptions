// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore == 58) {
      resultText = 'Welcome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}
