import 'package:flutter/material.dart';

class Question {
  final int order;
  final String question;
  final List<String> answers;
  final String correctAnswer;
  final String img;
  final String explaination;

  Question({
    @required this.order,
    @required this.question,
    @required this.answers,
    @required this.correctAnswer,
    @required this.img,
    @required this.explaination,
  });
}
