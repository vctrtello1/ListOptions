// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
