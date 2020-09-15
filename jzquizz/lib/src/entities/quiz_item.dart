import 'package:flutter/material.dart';
import 'package:jzquizz/src/entities/question.dart';

class QuizItem {
  final String category;
  final String author;
  final String publicTime;
  final String source;
  final String title;
  final List<Question> questions;

  QuizItem(
      {@required this.category,
      @required this.author,
      @required this.publicTime,
      @required this.source,
      @required this.title,
      @required this.questions});
}
