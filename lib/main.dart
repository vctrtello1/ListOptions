import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = [
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
    if (_questionIndex < questions.length) {}
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
          body: _questionIndex < questions.length
              ? Column(
                  children: [
                    Question(
                      questions[_questionIndex]['questionText'].toString(),
                    ),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text('You did it!'),
                )),
    );
  }
}
