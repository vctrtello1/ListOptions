import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText = 'You did it!';

    if (resultScore == 58) {
      resultText = 'Welcome';
    } else if (resultScore == 37) {
      resultText = 'Welcome and bye!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetHandler, child: const Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
