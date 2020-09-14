import 'package:flutter/material.dart';
import 'package:jzquizz/src/model/quiz_item.dart';

class HomeCenterView extends StatelessWidget {
  final List<QuizItem> listQuizItem;

  HomeCenterView({@required this.listQuizItem});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: null,
    );
  }
}
