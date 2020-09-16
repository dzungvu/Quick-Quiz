import 'package:flutter/material.dart';
import 'package:jzquizz/src/entities/question.dart';

class QuizView extends StatelessWidget {
  final Question question;
  QuizView({@required this.question});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(question.question),
          Text(question.answers.length.toString()),
          Text(question.correctAnswer),
        ],
      ),
    );
  }
}
