import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer choosen');

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
          'White',
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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'].toString(),
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
