import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer choosen');

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite color?",
      "What is your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: Column(
            children: [
              Text(questions.elementAt(_questionIndex)),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 2')),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 3')),
            ],
          )),
    );
  }
}
