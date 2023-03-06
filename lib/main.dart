import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        'Black',
        'Red',
        'Green',
        'White',
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        'Dog',
        'Cat',
        'Wolf',
        'Lion',
      ]
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        'Pizza',
        'Hamburger',
        'Pasta Alfredo',
        'Lasagna',
      ]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My first app'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              // ignore: prefer_const_constructors
              : Result()),
    );
  }
}
