import 'package:flutter/material.dart';
import 'package:myapp/question.dart';

import 'button.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Button(
              answer['text'] as String, () => answerQuestion(answer['score']));
        }).toList()
      ],
    );
  }
}
