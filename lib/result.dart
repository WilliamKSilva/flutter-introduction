import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Incredible!';
    } else if (resultScore <= 12) {
      resultText = 'Good!';
    } else if (resultScore <= 16) {
      resultText = 'Not good!';
    } else {
      resultText = 'Horrible!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetQuiz,
              child: const Text('Restart Quiz!'),
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                color: Colors.blue,
              )))
        ],
      ),
    );
  }
}
