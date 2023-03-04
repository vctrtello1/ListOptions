// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  // ignore: prefer_const_constructors_in_immutables
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // ignore: sort_child_properties_last
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
